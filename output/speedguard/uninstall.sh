#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedguard_options'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'speedguard-notice-activation'
wp transient delete 'speedguard_tests_count'
wp transient delete 'speedguard_notice_add_new_url_error_empty'
wp transient delete 'speedguard_notice_add_new_url_error_not_url'
wp transient delete 'speedguard_notice_create_test'
wp transient delete 'speedguard_notice_add_new_url_error_max_urls'
wp transient delete 'speedguard_notice_add_new_url_error_not_current_domain'
wp transient delete 'speedguard_notice_slow_down'
wp transient delete 'speedguard_notice_already_in_queue'
wp transient delete 'speedguard_notice_delete_guarded_pages'
wp transient delete 'speedguard_tests_in_queue'
wp transient delete 'speedguard_last_test_is_done'
wp transient delete 'speedguard_not_production_environment'
wp transient delete 'speedguard_no_cwv_data'
wp transient delete 'speedguard_notice_cwv_mobile_match'
wp transient delete 'speedguard_test_in_progress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_speedguard_notice_%' OR option_name LIKE '_site_transient_speedguard_notice_%'"
wp transient delete 'speedguard_notice_update_test'
wp transient delete 'speedguard_sending_request_now'
wp transient delete ' speedguard_sending_request_now'
wp transient delete 'speedguard-tests-running'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'speedguard-notice-deactivation'

# Clear Cron Jobs
wp cron event delete 'speedguard_update_results'
wp cron event delete 'speedguard_email_test_results'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guarded_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guarded_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guarded_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guarded_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedguard_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedguard_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedguard_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedguard_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guarded_post_blog_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guarded_post_blog_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guarded_post_blog_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guarded_post_blog_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedguard_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedguard_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedguard_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedguard_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_test_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_test_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_test_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_test_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedguard_page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedguard_page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedguard_page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedguard_page_url'"
