-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooct_settings', 'wooct_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wooct_%';
DELETE FROM wp_options WHERE option_name LIKE 'wooct_localization_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wooct_active', 'wooct_style', 'wooct_color', 'wooct_time', 'wooct_time_start', 'wooct_time_end', 'wooct_text_above', 'wooct_text_under', 'wooct_text_ended', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('wooct_active', 'wooct_style', 'wooct_color', 'wooct_time', 'wooct_time_start', 'wooct_time_end', 'wooct_text_above', 'wooct_text_under', 'wooct_text_ended', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('wooct_active', 'wooct_style', 'wooct_color', 'wooct_time', 'wooct_time_start', 'wooct_time_end', 'wooct_text_above', 'wooct_text_under', 'wooct_text_ended', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wooct_active', 'wooct_style', 'wooct_color', 'wooct_time', 'wooct_time_start', 'wooct_time_end', 'wooct_text_above', 'wooct_text_under', 'wooct_text_ended', '_sale_price_dates_from', '_sale_price_dates_to');

