-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rulehook_royalmail_promo_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('rulehook_royalmail_promo_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('rulehook_royalmail_promo_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rulehook_royalmail_promo_dismissed');

