-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_issc_coupon_title', '_issc_coupon_subtitle', '_issc_coupon_title_and_subtitle_color', '_issc_coupon_offer', '_issc_coupon_offer_color', '_issc_coupon_terms', '_issc_coupon_terms_color', '_issc_coupon_border_and_title_bg_color', '_issc_coupon_bg_color', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_issc_coupon_title', '_issc_coupon_subtitle', '_issc_coupon_title_and_subtitle_color', '_issc_coupon_offer', '_issc_coupon_offer_color', '_issc_coupon_terms', '_issc_coupon_terms_color', '_issc_coupon_border_and_title_bg_color', '_issc_coupon_bg_color', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_issc_coupon_title', '_issc_coupon_subtitle', '_issc_coupon_title_and_subtitle_color', '_issc_coupon_offer', '_issc_coupon_offer_color', '_issc_coupon_terms', '_issc_coupon_terms_color', '_issc_coupon_border_and_title_bg_color', '_issc_coupon_bg_color', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_issc_coupon_title', '_issc_coupon_subtitle', '_issc_coupon_title_and_subtitle_color', '_issc_coupon_offer', '_issc_coupon_offer_color', '_issc_coupon_terms', '_issc_coupon_terms_color', '_issc_coupon_border_and_title_bg_color', '_issc_coupon_bg_color', '_wp_page_template');

