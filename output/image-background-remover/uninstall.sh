#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rmbg_api_key'
wp option delete 'rmbg_processing_mode'
wp option delete 'rmbg_auto_removal_enabled'
wp option delete 'rmbg_items_per_page'
wp option delete 'rmbg_cache'

# Clear Cron Jobs
wp cron event delete 'rmbg_process_uploaded_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rmbg_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rmbg_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rmbg_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rmbg_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rmbg_original_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rmbg_original_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rmbg_original_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rmbg_original_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rmbg_output_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rmbg_output_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rmbg_output_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rmbg_output_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rmbg_original_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rmbg_original_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rmbg_original_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rmbg_original_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rmbg_auto_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rmbg_auto_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rmbg_auto_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rmbg_auto_processed'"
