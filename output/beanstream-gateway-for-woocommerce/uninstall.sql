-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_beanstream_settings', 'woocommerce_force_ssl_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_beanstream_capture');
DELETE FROM wp_usermeta WHERE meta_key IN ('_beanstream_capture');
DELETE FROM wp_termmeta WHERE meta_key IN ('_beanstream_capture');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_beanstream_capture');

