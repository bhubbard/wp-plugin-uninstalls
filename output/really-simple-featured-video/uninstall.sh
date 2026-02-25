#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wpgs_form'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'rsfv_queue_flush_rewrite_rules'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rsfv_rollback_versions_%' OR option_name LIKE '_site_transient_rsfv_rollback_versions_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsfv_fv_display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsfv_fv_display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsfv_fv_display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsfv_fv_display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsfv_fv_page_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsfv_fv_page_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsfv_fv_page_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsfv_fv_page_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsfv_fv_target_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsfv_fv_target_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsfv_fv_target_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsfv_fv_target_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsfv_fv_target_taxonomies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsfv_fv_target_taxonomies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsfv_fv_target_taxonomies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsfv_fv_target_taxonomies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsfv_fv_video_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsfv_fv_video_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsfv_fv_video_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsfv_fv_video_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsfv_fv_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsfv_fv_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsfv_fv_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsfv_fv_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsfv_fv_embed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsfv_fv_embed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsfv_fv_embed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsfv_fv_embed_url'"
