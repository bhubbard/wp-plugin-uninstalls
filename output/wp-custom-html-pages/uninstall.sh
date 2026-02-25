#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpchtmlp_opt_remove_table_on_uninstall'
wp option delete 'wpchtmlp_opt_editor_type'
wp option delete 'wpchtmlp_opt_editor_style'
wp option delete 'wpchtmlp_opt_allow_wp-admin'
wp option delete 'wpchtmlp_opt_filter_params'
wp option delete 'wpchtmlp_ignore_trailing_slash'
wp option delete 'WPCHTMLP_activity_log_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WPCHTMLP_page_meta_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WPCHTMLP_page_meta_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WPCHTMLP_page_meta_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WPCHTMLP_page_meta_box'"
