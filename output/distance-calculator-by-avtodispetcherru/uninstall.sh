#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dc_type'
wp option delete 'autodisp_page_id'
wp option delete 'auto_disp_menu_item_id'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

