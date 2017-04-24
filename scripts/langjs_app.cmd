@echo off
rem    /*
rem    All Emoncms code is released under the GNU Affero General Public License.
rem    See COPYRIGHT.txt and LICENSE.txt.
rem    ---------------------------------------------------------------------
rem    Emoncms - open source energy visualisation
rem    Part of the OpenEnergyMonitor project: http://openenergymonitor.org
rem    */
rem

rem Set dir to script location
cd /d %~dp0

rem langjs_builder.php script generate new javascript translation file
php langjs_builder.php ../Modules/app app_langjs.php

echo "Press space to show generated file or Ctrl+C to exit"
pause

more ..\Modules\app\app_langjs.php
pause