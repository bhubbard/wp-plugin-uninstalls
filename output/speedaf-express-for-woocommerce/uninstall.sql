-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spf_speedaf_enable', 'spf_speedaf_api_key', 'spf_speedaf_name', 'spf_speedaf_phone', 'spf_speedaf_email', 'spf_speedaf_order_prefix', 'woocommerce_default_country', 'spf_speedaf_allow_opened');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

