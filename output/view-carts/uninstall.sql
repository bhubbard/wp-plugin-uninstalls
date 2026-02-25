-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcvsc_cart_expiry', 'wcvsc_refresh');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('date_expires', 'expiry_date', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('date_expires', 'expiry_date', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('date_expires', 'expiry_date', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('date_expires', 'expiry_date', '_price');

