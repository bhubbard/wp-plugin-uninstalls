-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affwp_version', 'affwp_odfa_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('affwp_order_details_access');
DELETE FROM wp_usermeta WHERE meta_key IN ('affwp_order_details_access');
DELETE FROM wp_termmeta WHERE meta_key IN ('affwp_order_details_access');
DELETE FROM wp_commentmeta WHERE meta_key IN ('affwp_order_details_access');

