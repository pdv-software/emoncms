<?php
    /*
    All Emoncms code is released under the GNU Affero General Public License.
    See COPYRIGHT.txt and LICENSE.txt.

    ---------------------------------------------------------------------
    Emoncms - open source energy visualisation
    Part of the OpenEnergyMonitor project:
    http://openenergymonitor.org
    */

    global $path, $embed;
?>

<!--[if IE]><script language="javascript" type="text/javascript" src="<?php echo $path;?>Lib/flot/excanvas.min.js"></script><![endif]-->
<script language="javascript" type="text/javascript" src="<?php echo $path; ?>Lib/flot/jquery.flot.min.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $path; ?>Lib/flot/jquery.flot.time.min.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $path; ?>Lib/flot/jquery.flot.selection.min.js"></script>

<script language="javascript" type="text/javascript" src="<?php echo $path; ?>Lib/flot/jquery.flot.canvas.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $path; ?>Lib/flot/plugin/saveAsImage/lib/base64.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $path; ?>Lib/flot/plugin/saveAsImage/lib/canvas2image.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $path; ?>Lib/flot/plugin/saveAsImage/jquery.flot.saveAsImage.js"></script>

<script language="javascript" type="text/javascript" src="<?php echo $path;?>Modules/vis/visualisations/graph.js"></script>

<div id="apihelphead" style="float:right;">
    <button class='btn graph_time' type='button' time='1'><?php echo _("D"); ?></button>
    <button class='btn graph_time' type='button' time='7'><?php echo _("W"); ?></button>
    <button class='btn graph_time' type='button' time='30'><?php echo _("M"); ?></button>
    <button class='btn graph_time' type='button' time='365'><?php echo _("Y"); ?></button>
    <button id='graph_zoomin' class='btn'>+</button>
    <button id='graph_zoomout' class='btn'>-</button>
    <button id='graph_left' class='btn'><</button>
    <button id='graph_right' class='btn'>></button>
</div>
<div id="localheading"><h2><?php echo _("Data viewer"); ?></h2></div>

<div id="error" style="display:none"></div>

<div id="placeholder_bound" style="width:100%; height:400px;">
    <div id="placeholder"></div>
</div>

<div id="info" style="padding:20px;background-color:rgb(245,245,245); font-style:italic; display:none">

    <p><b><?php echo _("Stats"); ?></b></p>
    
    <table class="table">
        <tr><th></th><th><?php echo _("Mean"); ?></th><th><?php echo _("Min"); ?></th><th><?php echo _("Max"); ?></th><th><?php echo _("Diff"); ?></th><th><?php echo _("Std Dev"); ?></th><th><?php echo _("npoints"); ?></th></tr>
        <tr>
            <td></td>
            <td id="stats-mean"></td>
            <td id="stats-min"></td>
            <td id="stats-max"></td>
            <td id="stats-diff"></td>
            <td id="stats-stdev"></td>
            <td id="stats-npoints"></td>
        </tr>
    </table>
    
    <p><b><?php echo _("Advanced"); ?></b></p>
    <div><?php echo _("Apply smoothing (number of points)"); ?>:
      <select id="smoothing" style="width:50px">
          <option>0</option>
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
      </select>
    </div>
    <br>

    <p><b><?php echo _("API Request"); ?></b></p>
    
    <div class="input-prepend input-append">
        <span class="add-on" style="width:75px"><?php echo _("Start"); ?></span>
        <input id="request-start" type="text" style="width:80px" />

        <span class="add-on" style="width:75px"><?php echo _("End"); ?></span>
        <input id="request-end" type="text" style="width:80px" />

        <span class="add-on" style="width:75px"><?php echo _("Interval"); ?></span>
        <input id="request-interval" type="text" style="width:60px" />

        <span class="add-on"><?php echo _("Skip missing"); ?> <input id="request-skipmissing" type="checkbox" /></span>
        <span class="add-on"><?php echo _("Limit interval"); ?> <input id="request-limitinterval" type="checkbox" /></span>
    
        <button id="resend" class="btn"><?php echo _("Resend"); ?></button>
    </div>
    
    <div>GET <a id="request-url"></a></div>
    <br>
    
    <button class="btn" id="showcsv" >Show CSV Output</button>
    
    <textarea id="csv" style="width:95%; height:500px; display:none; margin-top:10px"></textarea>

</div>
<script>
    app_graph.feedname = parseInt("<?php echo $feedid; ?>");
    var path = "<?php echo $path; ?>";
    app_graph.init();
    app_graph.show();
</script>

