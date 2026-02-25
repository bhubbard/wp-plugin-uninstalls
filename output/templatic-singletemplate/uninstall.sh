#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmpl_post_detail_plugin_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpl_wp_post_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpl_wp_post_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpl_wp_post_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpl_wp_post_template'"
