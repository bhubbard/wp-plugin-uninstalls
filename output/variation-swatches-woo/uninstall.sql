-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cfvsw_color', 'cfvsw_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('cfvsw_color', 'cfvsw_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('cfvsw_color', 'cfvsw_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cfvsw_color', 'cfvsw_image');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cfvsw_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cfvsw_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cfvsw_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cfvsw_%';

