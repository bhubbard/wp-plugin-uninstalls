#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dtime_convert'
wp option delete 'ee_widget'
wp option delete 'ddatefunc_string'
wp option delete 'dtime_widget'
wp option delete 'dtime_widgetsec'
wp option delete 'ddatefunc_change'
wp option delete 'dtimefunc_change'

