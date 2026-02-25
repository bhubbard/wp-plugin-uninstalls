-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bacs_accounts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ga_tracked', '_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ga_tracked', '_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ga_tracked', '_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ga_tracked', '_tracked');

