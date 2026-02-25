#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%quality_image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%automatic_compression'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%original_local_copy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%modal_window_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%image_backups'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_automatic_compression'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%is_copy_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%is_copy_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%is_copy_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%is_copy_of'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%optimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%bytes_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%bytes_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%bytes_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%bytes_saved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%human_bytes_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%human_bytes_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%human_bytes_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%human_bytes_saved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%bytes_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%bytes_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%bytes_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%bytes_percentage'"
