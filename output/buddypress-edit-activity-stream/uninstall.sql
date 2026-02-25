-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etivite_bp_edit_activity_lock_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_latest_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_latest_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_latest_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_latest_update');

