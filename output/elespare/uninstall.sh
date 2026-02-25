#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'elementor_maintenance_mode_template_id'
wp option delete 'elespare_upgrade_notice_start_time'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ele_hf_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ele_hf_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ele_hf_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ele_hf_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ele_hf_ex_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ele_hf_ex_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ele_hf_ex_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ele_hf_ex_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ele_hf_no_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ele_hf_no_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ele_hf_no_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ele_hf_no_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ele_hf_ex_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ele_hf_ex_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ele_hf_ex_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ele_hf_ex_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ele_hf_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ele_hf_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ele_hf_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ele_hf_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ele_hf_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ele_hf_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ele_hf_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ele_hf_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ele_hf_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ele_hf_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ele_hf_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ele_hf_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_v2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_temporary_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_temporary_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_temporary_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_temporary_v2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elespare_upgrade_notice_dismiss_temporary_start_time_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elespare_upgrade_notice_dismiss_temporary_start_time_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elespare_upgrade_notice_dismiss_temporary_start_time_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elespare_upgrade_notice_dismiss_temporary_start_time_v2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elespare_upgrade_notice_dismiss_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elespare_upgrade_notice_dismiss_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elespare_upgrade_notice_dismiss_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elespare_upgrade_notice_dismiss_v2'"
