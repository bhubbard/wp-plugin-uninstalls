#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'youtubeprefs_alloptions'
wp option delete 'embed_size_w'
wp option delete 'embed_size_h'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_migrate'"
wp option delete 'embed_autourls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'embedplus_double_plugin_warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'embedplus_double_plugin_warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'embedplus_double_plugin_warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'embedplus_double_plugin_warning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
