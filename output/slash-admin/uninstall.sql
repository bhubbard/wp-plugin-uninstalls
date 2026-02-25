-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slashadmin_options', 'downloaded_font_files', 'users_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slash_accept');
DELETE FROM wp_usermeta WHERE meta_key IN ('slash_accept');
DELETE FROM wp_termmeta WHERE meta_key IN ('slash_accept');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slash_accept');

