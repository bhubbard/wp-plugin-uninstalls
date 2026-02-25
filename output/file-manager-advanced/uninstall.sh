#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fmaoptions'
wp option delete 'fma_blocks_dummy_data_created'
wp option delete 'fma_hide_review_section'
wp option delete 'fma_appsumo_banner_hide'
wp option delete '_fma_banner_hide'
wp option delete '_fma_banner_minimize'
wp option delete 'post-smtp-recommendation-notice-hidden'
wp option delete 'post_smtp_global_recommendation_notice_hidden'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcode_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcode_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcode_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcode_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'block_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'block_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'block_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'block_type'"
