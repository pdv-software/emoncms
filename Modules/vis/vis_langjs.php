
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

// multigraph_edit.js
LANG_JS["Add"] = '<?php echo addslashes(_("Add")); ?>';
LANG_JS["Are you sure you want to delete?"] = '<?php echo addslashes(_("Are you sure you want to delete?")); ?>';
LANG_JS["Auto refresh (secs)"] = '<?php echo addslashes(_("Auto refresh (secs)")); ?>';
LANG_JS["Cancel"] = '<?php echo addslashes(_("Cancel")); ?>';
LANG_JS["Changed, press to save"] = '<?php echo addslashes(_("Changed, press to save")); ?>';
LANG_JS["Delete"] = '<?php echo addslashes(_("Delete")); ?>';
LANG_JS["Delete Multigraph"] = '<?php echo addslashes(_("Delete Multigraph")); ?>';
LANG_JS["Delete permanently"] = '<?php echo addslashes(_("Delete permanently")); ?>';
LANG_JS["Deleting a multigraph is permanent.<br>Make sure no Dashboard continue to use the deleted multigraph"] = '<?php echo addslashes(_("Deleting a multigraph is permanent.<br>Make sure no Dashboard continue to use the deleted multigraph")); ?>';
LANG_JS["Feed"] = '<?php echo addslashes(_("Feed")); ?>';
LANG_JS["Fill"] = '<?php echo addslashes(_("Fill")); ?>';
LANG_JS["Floating time"] = '<?php echo addslashes(_("Floating time")); ?>';
LANG_JS["Left"] = '<?php echo addslashes(_("Left")); ?>';
LANG_JS["Line Colour"] = '<?php echo addslashes(_("Line Colour")); ?>';
LANG_JS["Max"] = '<?php echo addslashes(_("Max")); ?>';
LANG_JS["Min"] = '<?php echo addslashes(_("Min")); ?>';
LANG_JS["Name"] = '<?php echo addslashes(_("Name")); ?>';
LANG_JS["New multigraph"] = '<?php echo addslashes(_("New multigraph")); ?>';
LANG_JS["No multigraphs created yet, click new to create one:"] = '<?php echo addslashes(_("No multigraphs created yet, click new to create one:")); ?>';
LANG_JS["Not modified"] = '<?php echo addslashes(_("Not modified")); ?>';
LANG_JS["Right"] = '<?php echo addslashes(_("Right")); ?>';
LANG_JS["Select multigraph:"] = '<?php echo addslashes(_("Select multigraph:")); ?>';
LANG_JS["Show Legend"] = '<?php echo addslashes(_("Show Legend")); ?>';
LANG_JS["Show tag name"] = '<?php echo addslashes(_("Show tag name")); ?>';
LANG_JS["Skip missing data"] = '<?php echo addslashes(_("Skip missing data")); ?>';
LANG_JS["Some of the feeds selected are not public, to embed a visualisation publicly first make the feeds that you want to use public."] = '<?php echo addslashes(_("Some of the feeds selected are not public, to embed a visualisation publicly first make the feeds that you want to use public.")); ?>';
LANG_JS["Stack"] = '<?php echo addslashes(_("Stack")); ?>';
LANG_JS["To embed privately:"] = '<?php echo addslashes(_("To embed privately:")); ?>';
LANG_JS["Y axes limits"] = '<?php echo addslashes(_("Y axes limits")); ?>';

// multigraph.js
LANG_JS["D"] = '<?php echo addslashes(_("D")); ?>';
LANG_JS["End:"] = '<?php echo addslashes(_("End:")); ?>';
LANG_JS["M"] = '<?php echo addslashes(_("M")); ?>';
LANG_JS["Select time window"] = '<?php echo addslashes(_("Select time window")); ?>';
LANG_JS["Start:"] = '<?php echo addslashes(_("Start:")); ?>';
LANG_JS["Tooltip:"] = '<?php echo addslashes(_("Tooltip:")); ?>';
LANG_JS["W"] = '<?php echo addslashes(_("W")); ?>';
LANG_JS["Y"] = '<?php echo addslashes(_("Y")); ?>';

// vis_render.js
LANG_JS["0 = before value, 1 = after value"] = '<?php echo addslashes(_("0 = before value, 1 = after value")); ?>';
LANG_JS["Bottom"] = '<?php echo addslashes(_("Bottom")); ?>';
LANG_JS["Bottom colour"] = '<?php echo addslashes(_("Bottom colour")); ?>';
LANG_JS["Bottom feed value"] = '<?php echo addslashes(_("Bottom feed value")); ?>';
LANG_JS["Colour"] = '<?php echo addslashes(_("Colour")); ?>';
LANG_JS["Consumption"] = '<?php echo addslashes(_("Consumption")); ?>';
LANG_JS["Consumption feed value"] = '<?php echo addslashes(_("Consumption feed value")); ?>';
LANG_JS["Currency"] = '<?php echo addslashes(_("Currency")); ?>';
LANG_JS["Currency position"] = '<?php echo addslashes(_("Currency position")); ?>';
LANG_JS["Currency to show"] = '<?php echo addslashes(_("Currency to show")); ?>';
LANG_JS["Data points"] = '<?php echo addslashes(_("Data points")); ?>';
LANG_JS["Day"] = '<?php echo addslashes(_("Day")); ?>';
LANG_JS["Decimal points"] = '<?php echo addslashes(_("Decimal points")); ?>';
LANG_JS["Default: 800"] = '<?php echo addslashes(_("Default: 800")); ?>';
LANG_JS["Default visible window interval"] = '<?php echo addslashes(_("Default visible window interval")); ?>';
LANG_JS["delta"] = '<?php echo addslashes(_("delta")); ?>';
LANG_JS["Depth"] = '<?php echo addslashes(_("Depth")); ?>';
LANG_JS["dp"] = '<?php echo addslashes(_("dp")); ?>';
LANG_JS["Feed"] = '<?php echo addslashes(_("Feed")); ?>';
LANG_JS["Feed source"] = '<?php echo addslashes(_("Feed source")); ?>';
LANG_JS["Fill"] = '<?php echo addslashes(_("Fill")); ?>';
LANG_JS["Fill under line"] = '<?php echo addslashes(_("Fill under line")); ?>';
LANG_JS["Fill value"] = '<?php echo addslashes(_("Fill value")); ?>';
LANG_JS["hour"] = '<?php echo addslashes(_("hour")); ?>';
LANG_JS["Hours"] = '<?php echo addslashes(_("Hours")); ?>';
LANG_JS["Interval"] = '<?php echo addslashes(_("Interval")); ?>';
LANG_JS["Interval (seconds)-you can set \"d\" for day, \"m\" for month, or \"y\" for year"] = '<?php echo addslashes(_("Interval (seconds)-you can set \"d\" for day, \"m\" for month, or \"y\" for year")); ?>';
LANG_JS["kwhd"] = '<?php echo addslashes(_("kwhd")); ?>';
LANG_JS["kwhd source"] = '<?php echo addslashes(_("kwhd source")); ?>';
LANG_JS["Kwh price"] = '<?php echo addslashes(_("Kwh price")); ?>';
LANG_JS["Line colour in hex. Blank is use default."] = '<?php echo addslashes(_("Line colour in hex. Blank is use default.")); ?>';
LANG_JS["Managed on Visualization module"] = '<?php echo addslashes(_("Managed on Visualization module")); ?>';
LANG_JS["minute"] = '<?php echo addslashes(_("minute")); ?>';
LANG_JS["minutes"] = '<?php echo addslashes(_("minutes")); ?>';
LANG_JS["Month"] = '<?php echo addslashes(_("Month")); ?>';
LANG_JS["Multigraph"] = '<?php echo addslashes(_("Multigraph")); ?>';
LANG_JS["Number of lines"] = '<?php echo addslashes(_("Number of lines")); ?>';
LANG_JS["Power"] = '<?php echo addslashes(_("Power")); ?>';
LANG_JS["Power to show"] = '<?php echo addslashes(_("Power to show")); ?>';
LANG_JS["scale"] = '<?php echo addslashes(_("scale")); ?>';
LANG_JS["Scale by"] = '<?php echo addslashes(_("Scale by")); ?>';
LANG_JS["Set kwh price"] = '<?php echo addslashes(_("Set kwh price")); ?>';
LANG_JS["Show difference between each bar"] = '<?php echo addslashes(_("Show difference between each bar")); ?>';
LANG_JS["Solar"] = '<?php echo addslashes(_("Solar")); ?>';
LANG_JS["Solar feed value"] = '<?php echo addslashes(_("Solar feed value")); ?>';
LANG_JS["Threshold A"] = '<?php echo addslashes(_("Threshold A")); ?>';
LANG_JS["Threshold A used"] = '<?php echo addslashes(_("Threshold A used")); ?>';
LANG_JS["Threshold B"] = '<?php echo addslashes(_("Threshold B")); ?>';
LANG_JS["Threshold B used"] = '<?php echo addslashes(_("Threshold B used")); ?>';
LANG_JS["Top"] = '<?php echo addslashes(_("Top")); ?>';
LANG_JS["Top colour"] = '<?php echo addslashes(_("Top colour")); ?>';
LANG_JS["Top feed value"] = '<?php echo addslashes(_("Top feed value")); ?>';
LANG_JS["Ufac"] = '<?php echo addslashes(_("Ufac")); ?>';
LANG_JS["Ufac value"] = '<?php echo addslashes(_("Ufac value")); ?>';
LANG_JS["Units"] = '<?php echo addslashes(_("Units")); ?>';
LANG_JS["units"] = '<?php echo addslashes(_("units")); ?>';
LANG_JS["Units to show"] = '<?php echo addslashes(_("Units to show")); ?>';
LANG_JS["Week"] = '<?php echo addslashes(_("Week")); ?>';
LANG_JS["x axis title"] = '<?php echo addslashes(_("x axis title")); ?>';
LANG_JS["xtitle"] = '<?php echo addslashes(_("xtitle")); ?>';
LANG_JS["y axis maximum"] = '<?php echo addslashes(_("y axis maximum")); ?>';
LANG_JS["y axis minimum"] = '<?php echo addslashes(_("y axis minimum")); ?>';
LANG_JS["y axis title"] = '<?php echo addslashes(_("y axis title")); ?>';
LANG_JS["Year"] = '<?php echo addslashes(_("Year")); ?>';
LANG_JS["ymax"] = '<?php echo addslashes(_("ymax")); ?>';
LANG_JS["ymin"] = '<?php echo addslashes(_("ymin")); ?>';
LANG_JS["ytitle"] = '<?php echo addslashes(_("ytitle")); ?>';
LANG_JS["Zoom"] = '<?php echo addslashes(_("Zoom")); ?>';
// END AUTO GENERATED
