-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbel-version', 'wpbe_update_table_log', 'it_black_friday_banner_dismissed', 'wpbe_active_post_type', 'itbbc_scheduler_version', 'wpbel_some_setting', 'wpbel_usage_track', 'ithemeland_activation_email', 'wpbel_onboarding', 'wpbel_opt_in', 'wpbe_active_count_undo');
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_error';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_try_again';
DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

