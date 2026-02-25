#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssc_guid'
wp option delete 'ssc_404_inactive_url'
wp option delete 'ssc_301_redirect_url'
wp option delete 'ssc_main_phone'
wp option delete 'ssc_alt_phone'
wp option delete 'ssc_interlinking_keywords'
wp option delete 'ssc_interlinking_links'
wp option delete 'ssc_config_last_modified'
wp option delete 'ssc_last_check'
wp option delete 'ssc_last_update'
wp option delete 'ssc_last_update_completion'
wp option delete 'ssc_image_count'
wp option delete 'ssc_page_count'
wp option delete 'ssc_post_count'
wp option delete 'ssc_plugin_version'
wp option delete 'ssc_force_update'
wp option delete 'ssc_group_size'
wp option delete 'ssc_last_check_result'
wp option delete 'ssc_locked'
wp option delete 'ssc_log'
wp option delete 'ssc_queue'
wp option delete 'ssc_queue_cancel'
wp option delete 'ssc_queue_current_page'
wp option delete 'ssc_queue_current_page_timestamp'
wp option delete 'ssc_queue_hook_timestamp'
wp option delete 'ssc_queue_length'
wp option delete 'ssc_queue_length_total'
wp option delete 'ssc_queue_page_processed'
wp option delete 'ssc_queue_page_skipped'
wp option delete 'ssc_queue_post_processed'
wp option delete 'ssc_queue_post_skipped'
wp option delete 'ssc_update_end'
wp option delete 'ssc_update_method'
wp option delete 'ssc_update_result'
wp option delete 'ssc_update_start'

# Delete Transients
wp transient delete 'ssc_readConfig_lock'
wp transient delete 'ssc_processQueue_lock'
wp transient delete 'ssc_processCompleted_lock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssc_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssc_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssc_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssc_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kd_featured-image-2_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kd_featured-image-2_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kd_featured-image-2_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kd_featured-image-2_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kd_featured-image-3_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kd_featured-image-3_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kd_featured-image-3_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kd_featured-image-3_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kd_featured-image-4_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kd_featured-image-4_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kd_featured-image-4_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kd_featured-image-4_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kd_featured-image-5_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kd_featured-image-5_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kd_featured-image-5_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kd_featured-image-5_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssc_parent_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssc_parent_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssc_parent_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssc_parent_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssc_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssc_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssc_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssc_image'"
