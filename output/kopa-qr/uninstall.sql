-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_kopa_custom_img_position', 'woocommerce_kopa_max_width');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_kopa_qr_position', 'kopa_qr_code_link', 'kopa_deep_link', 'kopa_qr_code', '_display_kopa_qr_code', 'kopa_qr_post_status', 'kopa_qr_code_request');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_kopa_qr_position', 'kopa_qr_code_link', 'kopa_deep_link', 'kopa_qr_code', '_display_kopa_qr_code', 'kopa_qr_post_status', 'kopa_qr_code_request');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_kopa_qr_position', 'kopa_qr_code_link', 'kopa_deep_link', 'kopa_qr_code', '_display_kopa_qr_code', 'kopa_qr_post_status', 'kopa_qr_code_request');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_kopa_qr_position', 'kopa_qr_code_link', 'kopa_deep_link', 'kopa_qr_code', '_display_kopa_qr_code', 'kopa_qr_post_status', 'kopa_qr_code_request');

