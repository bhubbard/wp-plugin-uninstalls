-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('better_payment_plugin_installed_fresh', 'better_payment_plugin_installed_time_fresh', 'better_payment_progress_bar_dismissed_expiry_date', 'better_payment_version', 'better_payment_setup_wizard', 'better_payment_sale_info_dismissed', 'better_payment_progress_bar_dismissed', 'better_payment_settings', 'better_payment_campaigns', 'better_payment_settings_opt_in', 'wpins_allow_tracking', 'wpins_last_track_time', 'active_sitewide_plugins', 'wpins_block_notice', 'bp_widget_usage_initial_scan_done', 'better_payment_any_widget_used', 'better_payment_import_transactions_success', 'better_payment_import_transactions_error');
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

