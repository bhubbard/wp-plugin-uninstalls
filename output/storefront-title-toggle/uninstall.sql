-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woa_sf_activation_notice', 'woocommerce_shop_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%-version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woa_sf_title_toggle');
DELETE FROM wp_usermeta WHERE meta_key IN ('woa_sf_title_toggle');
DELETE FROM wp_termmeta WHERE meta_key IN ('woa_sf_title_toggle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woa_sf_title_toggle');

