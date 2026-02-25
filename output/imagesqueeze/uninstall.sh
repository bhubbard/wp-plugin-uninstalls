#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imagesqueeze_optimization_log'
wp option delete 'imagesqueeze_last_run_summary'
wp option delete 'imagesqueeze_current_job'
wp option delete 'imagesqueeze_total_saved_bytes'
wp option delete 'imagesqueeze_last_run_time'
wp option delete 'imagesqueeze_settings'
wp option delete 'imagesqueeze_job_queue'
wp option delete 'imagesqueeze_using_filters'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagesqueeze_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagesqueeze_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagesqueeze_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagesqueeze_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagesqueeze_error_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagesqueeze_error_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagesqueeze_error_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagesqueeze_error_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagesqueeze_last_attempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagesqueeze_last_attempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagesqueeze_last_attempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagesqueeze_last_attempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagesqueeze_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagesqueeze_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagesqueeze_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagesqueeze_optimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagesqueeze_webp_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagesqueeze_webp_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagesqueeze_webp_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagesqueeze_webp_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagesqueeze_saved_bytes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagesqueeze_saved_bytes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagesqueeze_saved_bytes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagesqueeze_saved_bytes'"
