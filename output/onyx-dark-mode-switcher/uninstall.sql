-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onyx_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('syntax_highlighting');
DELETE FROM wp_usermeta WHERE meta_key IN ('syntax_highlighting');
DELETE FROM wp_termmeta WHERE meta_key IN ('syntax_highlighting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('syntax_highlighting');

