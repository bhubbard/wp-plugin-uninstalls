-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ad7_biz_id', 'wp_ad7_biz_type', 'wp_ad7_biz_domains', 'wp_ad7_biz_entry', 'wp_ad7_biz_convert', 'wp_ad7_biz_enable');

