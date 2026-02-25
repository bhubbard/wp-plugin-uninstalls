#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mc6397vt_installed'
wp option delete 'mc6397vt_showmonths'
wp option delete 'mc6397vt_showyear'
wp option delete 'mc6397vt_table_type'
wp option delete 'mc6397vt_table_color'
wp option delete 'mc6397vt_table_resp'
wp option delete 'mc6397vt_deleteTable'
wp option delete 'widget_mc6397vt_widget'

