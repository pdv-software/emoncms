
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

// process_ui.js
LANG_JS["Changed, press to save"] = '<?php echo addslashes(_("Changed, press to save")); ?>';
LANG_JS["Delete"] = '<?php echo addslashes(_("Delete")); ?>';
LANG_JS["Edit"] = '<?php echo addslashes(_("Edit")); ?>';
LANG_JS["ERROR"] = '<?php echo addslashes(_("ERROR")); ?>';
LANG_JS["Move down"] = '<?php echo addslashes(_("Move down")); ?>';
LANG_JS["Move up"] = '<?php echo addslashes(_("Move up")); ?>';
LANG_JS["Not modified"] = '<?php echo addslashes(_("Not modified")); ?>';
LANG_JS["Saved"] = '<?php echo addslashes(_("Saved")); ?>';
LANG_JS["UNSUPPORTED"] = '<?php echo addslashes(_("UNSUPPORTED")); ?>';
LANG_JS["Value"] = '<?php echo addslashes(_("Value")); ?>';
// END AUTO GENERATED
