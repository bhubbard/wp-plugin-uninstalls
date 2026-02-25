-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cartbounty_main_settings', 'cartbounty_exit_intent_settings', 'cartbounty_submitted_warnings', 'cartbounty_misc_settings', 'cartbounty_automation_steps', 'cartbounty_submitted_notices', 'cartbounty_automation_settings', 'cartbounty_automation_sent_emails', 'cartbounty_automation_sends', 'cartbounty_notification_frequency', 'cartbounty_review_submitted', 'cartbounty_notification_email', 'cartbounty_lift_email', 'cartbounty_hide_images', 'cartbounty_exclude_anonymous_carts', 'cartbounty_exclude_recovered', 'cartbounty_exit_intent_status', 'cartbounty_exit_intent_type', 'cartbounty_exit_intent_heading', 'cartbounty_exit_intent_content', 'cartbounty_exit_intent_image', 'cartbounty_exit_intent_test_mode', 'cartbounty_exit_intent_main_color', 'cartbounty_exit_intent_inverse_color', 'cartbounty_active_quick_stats', 'cartbounty_active_charts', 'cartbounty_chart_type', 'cartbounty_top_product_count', 'cartbounty_report_settings', 'cartbounty_automation_from_name', 'cartbounty_automation_from_email', 'cartbounty_automation_reply_email', 'cartbounty_cron_warning', 'cartbounty_version_number', 'cartbounty_recoverable_cart_count', 'cartbounty_anonymous_cart_count', 'cartbounty_recovered_cart_count', 'cartbounty_last_time_bubble_displayed', 'cartbounty_last_time_bubble_steps_displayed', 'cartbounty_times_review_declined', 'cartbounty_email_table_exists', 'cartbounty_converted_minutes_to_miliseconds', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cartbounty_carts_per_page', 'cartbounty_unsupported_plugin_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('cartbounty_carts_per_page', 'cartbounty_unsupported_plugin_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('cartbounty_carts_per_page', 'cartbounty_unsupported_plugin_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cartbounty_carts_per_page', 'cartbounty_unsupported_plugin_notice');

