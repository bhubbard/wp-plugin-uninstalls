-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cyb-switch', 'cyb-ios-full-mode', 'cyb-post-type', 'cyb-color', 'cyb-ios-bar-style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cyb-color');
DELETE FROM wp_usermeta WHERE meta_key IN ('cyb-color');
DELETE FROM wp_termmeta WHERE meta_key IN ('cyb-color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cyb-color');

