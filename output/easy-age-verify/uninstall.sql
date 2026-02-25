-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_evav_require_for', '_evav_always_verify', '_evav_pagetargeting_option', '_evav_ajax_check', '_evav_adult_type', '_evav_user_age_verify_option_title', '_evav_heading', '_evav_disclaimer', 'easy-age-verify', '_evav_minimum_age', '_evav_cookie_duration', '_evav_membership', '_evav_input_type', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_shop_page_id', '_evav_overlay_color', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_evav_needs_verify');
DELETE FROM wp_usermeta WHERE meta_key IN ('_evav_needs_verify');
DELETE FROM wp_termmeta WHERE meta_key IN ('_evav_needs_verify');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_evav_needs_verify');

