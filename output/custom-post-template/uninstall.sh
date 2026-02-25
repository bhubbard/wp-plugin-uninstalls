#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_urbangiraffe_rss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_available_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_config_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_post_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_post_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_post_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_post_template'"
