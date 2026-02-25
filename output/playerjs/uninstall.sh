#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'playerjs_com_script_path'
wp option delete 'playerjs_com_width'
wp option delete 'playerjs_com_customheight'
wp option delete 'playerjs_com_height'
wp option delete 'playerjs_com_align'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'playerjs_com_%'"

