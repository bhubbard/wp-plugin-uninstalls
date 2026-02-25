-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aet_et_tracking_settings', 'aet_where_hear_about_us', 'aet_data_submited_in_sendiblue', 'selected_data_ua_et', 'active_sitewide_plugins', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', '_aet_welcome_ecommerce_screen_activation_redirect_data', 'aet-admin-notice', 'aet_updated', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'selected_data_ua_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aet_dismiss_site_kit_notice', 'order_id_wth_uuid', 'aet_placed_order_success', 'aet_ga_placed_order_success');
DELETE FROM wp_usermeta WHERE meta_key IN ('aet_dismiss_site_kit_notice', 'order_id_wth_uuid', 'aet_placed_order_success', 'aet_ga_placed_order_success');
DELETE FROM wp_termmeta WHERE meta_key IN ('aet_dismiss_site_kit_notice', 'order_id_wth_uuid', 'aet_placed_order_success', 'aet_ga_placed_order_success');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aet_dismiss_site_kit_notice', 'order_id_wth_uuid', 'aet_placed_order_success', 'aet_ga_placed_order_success');

