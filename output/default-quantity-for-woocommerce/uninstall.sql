-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_quantity', 'dqfwc_installed', 'dqfwc_version');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dqfwc_default_quantity');
DELETE FROM wp_usermeta WHERE meta_key IN ('dqfwc_default_quantity');
DELETE FROM wp_termmeta WHERE meta_key IN ('dqfwc_default_quantity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dqfwc_default_quantity');

