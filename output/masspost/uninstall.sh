#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'masspost_debug_logs'
wp option delete 'masspost_api_token'
wp option delete 'masspost_api_user'
wp option delete 'masspost_websites'

# Delete Transients
wp transient delete 'masspost_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masspost_selected_sites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masspost_selected_sites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masspost_selected_sites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masspost_selected_sites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masspost_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masspost_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masspost_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masspost_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masspost_errors_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masspost_errors_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masspost_errors_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masspost_errors_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masspost_content_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masspost_content_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masspost_content_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masspost_content_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masspost_source_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masspost_source_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masspost_source_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masspost_source_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masspost_featured_src'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masspost_featured_src'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masspost_featured_src'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masspost_featured_src'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masspost_synced_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masspost_synced_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masspost_synced_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masspost_synced_images'"
