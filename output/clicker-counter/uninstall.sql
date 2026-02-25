-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_filetype', 'cc_class', 'cc_relationship', 'cc_custom');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('link');
DELETE FROM wp_usermeta WHERE meta_key IN ('link');
DELETE FROM wp_termmeta WHERE meta_key IN ('link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('link');

