#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'no_aioseop_nags_custom_css'
wp option delete 'no_aioseop_nags_custom_css-checkbox'
wp option delete 'no_aioseop_nags_your_custom_css'
wp option delete 'no_aioseop_nags_your_custom-checkbox'
wp option delete 'no_aioseop_nags_menu-checkbox'
wp option delete 'no_aioseop_nags_yoast'
wp option delete 'no_aioseop_nags_all_messages'
wp option delete 'abl_no_aioseop_nags_version'
wp option delete 'dismissed-prefix_deprecated'

