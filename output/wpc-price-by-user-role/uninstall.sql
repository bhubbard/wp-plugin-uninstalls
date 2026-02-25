-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcpu_prices', 'wpclever_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcpu_enable', 'wpcpu_prices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcpu_enable', 'wpcpu_prices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcpu_enable', 'wpcpu_prices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcpu_enable', 'wpcpu_prices');

