-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vpr_conditions_enabled', 'vpr_hide_restricted_posts_from_menus', 'vpr_whitelisted_roles', 'vpr_what_happens_when_post_is_restricted', 'vpr_error_message', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'vc_wc_cr_variations_per_country_tab_product_select_country_setting', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';

