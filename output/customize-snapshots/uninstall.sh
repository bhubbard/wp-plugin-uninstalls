#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snapshot_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snapshot_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snapshot_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snapshot_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview_url_query_vars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview_url_query_vars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview_url_query_vars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview_url_query_vars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapshot_error_on_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapshot_error_on_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapshot_error_on_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapshot_error_on_publish'"
