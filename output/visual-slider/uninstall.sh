#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vs_layer_template'
wp option delete 'vs_global_template'
wp option delete 'vs_slide_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_template'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vs_setting_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vs_setting_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vs_setting_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vs_setting_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vs_slide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vs_slide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vs_slide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vs_slide'"
