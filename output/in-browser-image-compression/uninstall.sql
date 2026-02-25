-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ibic_compatibility_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ibic_error', '_ibic_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ibic_error', '_ibic_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ibic_error', '_ibic_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ibic_error', '_ibic_processed');

