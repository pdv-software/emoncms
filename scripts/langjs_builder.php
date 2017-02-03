<?php
#$dir='../Modules/dashboard';
if ($argc<3){
  echo "Usage  :".$argv[0]." ../Modules/<folder> <target.php>\n";
  echo "Example:".$argv[0]." ../Modules/dashboard dashboard_langjs.php\n";
  exit;
} 
$dir=$argv[1];
$outfile=$argv[2];

$filejs=array();

function get_js_file($dir){
    global $filejs;
    $dirs = array_diff( scandir( $dir ), Array( ".", ".." ) );
    foreach( $dirs as $d ){
        if( is_dir($dir."/".$d)  ) get_js_file( $dir."/".$d);
        else if (pathinfo($d, PATHINFO_EXTENSION)=='js') $filejs[]=$dir."/".$d;
    }
}

function extract_translation($filejs){
  $translation=array();
  foreach ($filejs as $file){
   $lines = explode("\n", file_get_contents($file));
   $tr=array();
   foreach ($lines as $line){ 
     $pos = strpos($line, '_Tr(');
      if ($pos !== false) {
          $r = explode('_Tr("', $line);
          unset($r[0]);
          foreach ($r as $key=>$val){
            $rr= explode('")', $val);
            $tr[]=$rr[0];
          }
      }
   }
   $tr= array_unique($tr);
   if (count($tr)>0) {
    $a=explode('/', $file);
    $name=array_pop($a);
    natcasesort($tr);
    $translation[$name] = $tr;
   }
  }
  return $translation;
}

// create static header
$out = "
<?php
/*
  All Emoncms code is released under the GNU Affero General Public License.
  See COPYRIGHT.txt and LICENSE.txt.

  ---------------------------------------------------------------------
  Emoncms - open source energy visualisation
  Part of the OpenEnergyMonitor project:
  http://openenergymonitor.org
*/

// no direct access
defined('EMONCMS_EXEC') or die('Restricted access');

// Create a Javascript associative array who contain all sentences from module
?>
var LANG_JS = new Array();
function _Tr(key)
{
<?php // will return the default value if LANG_JS[key] is not defined. ?>
    return LANG_JS[key] || key;
}
<?php
//Please USE the builder every javascript modify at: /script/langjs_builder.php
?>
// START AUTO GENERATED
";

 get_js_file($dir); 
 //echo "<pre>".print_r($filejs,true)."</pre>";

 $translation= extract_translation($filejs);

 // echo "<pre>".print_r($translation,true)."</pre>";
 foreach ($translation as $file=>$tr){
  $out = $out."\n// ".$file."\n";
   foreach ($tr as $t){
     $out = $out."LANG_JS[\"$t\"] = '<?php echo addslashes(_(\"$t\")); ?>';\n";
   }
 }
 $out = $out."// END AUTO GENERATED\n";

 file_put_contents($dir."/".$outfile, $out);
 // echo "File: ".$dir."/".$outfile;
?>
