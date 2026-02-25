-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affwp_version', 'affwp_allp_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_affwp_no_allowed_products_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_affwp_no_allowed_products_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_affwp_no_allowed_products_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_affwp_no_allowed_products_dismissed');

