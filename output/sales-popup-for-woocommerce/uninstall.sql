-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wts_names_use', '_wts_name_default', '_wts_fake', '_wts_show_price', '_wcs_position', '_wts_mobile', '_wts_user_logged', '_wts_exception_urls', '_wts_position', '_wts_effect', '_wts_effect_delay', '_wts_effect_duration', '_wts_timeout_limit', '_wts_time_delay', 'wts-newsletter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wts_shows', 'first_name', '_wts_product_priority', '_wts_clics');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wts_shows', 'first_name', '_wts_product_priority', '_wts_clics');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wts_shows', 'first_name', '_wts_product_priority', '_wts_clics');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wts_shows', 'first_name', '_wts_product_priority', '_wts_clics');

