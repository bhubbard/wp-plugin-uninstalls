-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daisycon_woocommerce_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_daisycon_cc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_daisycon_cc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_daisycon_cc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_daisycon_cc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

