-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pblsh_settings', 'pblsh_secret_salt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pblsh_icon', '_pblsh_zip_path', '_pblsh_installations');
DELETE FROM wp_usermeta WHERE meta_key IN ('pblsh_icon', '_pblsh_zip_path', '_pblsh_installations');
DELETE FROM wp_termmeta WHERE meta_key IN ('pblsh_icon', '_pblsh_zip_path', '_pblsh_installations');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pblsh_icon', '_pblsh_zip_path', '_pblsh_installations');

