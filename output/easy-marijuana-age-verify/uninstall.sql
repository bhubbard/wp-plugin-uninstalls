-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_emav_require_for', '_emav_always_verify', '_emav_pagetargeting_option', '_emav_ajax_check', '_emav_user_age_verify_option', '_emav_disclaimer', 'easy-marijuana-age-verify', '_emav_age_header', '_emav_minimum_age', '_emav_cookie_duration', '_emav_membership', '_emav_input_type', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_shop_page_id', '_emav_overlay_color', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_emav_needs_verify');
DELETE FROM wp_usermeta WHERE meta_key IN ('_emav_needs_verify');
DELETE FROM wp_termmeta WHERE meta_key IN ('_emav_needs_verify');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_emav_needs_verify');

