-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpwcamp_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('clickedme_tracking');
DELETE FROM wp_usermeta WHERE meta_key IN ('clickedme_tracking');
DELETE FROM wp_termmeta WHERE meta_key IN ('clickedme_tracking');
DELETE FROM wp_commentmeta WHERE meta_key IN ('clickedme_tracking');

