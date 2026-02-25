-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caf_fa_icons', 'trusty_active_template', 'woocommerce_ship_to_destination', 'woocommerce_checkout_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('trusty_checkout_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('trusty_checkout_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('trusty_checkout_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('trusty_checkout_data');

