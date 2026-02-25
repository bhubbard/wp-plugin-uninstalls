-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blockonomics_edd_db_version', 'blockonomics_timeperiod');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blockonomics_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('blockonomics_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('blockonomics_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blockonomics_address');

