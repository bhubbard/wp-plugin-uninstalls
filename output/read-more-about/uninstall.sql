-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('read_more_about_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('read_more_links', 'read_more_color_scheme');
DELETE FROM wp_usermeta WHERE meta_key IN ('read_more_links', 'read_more_color_scheme');
DELETE FROM wp_termmeta WHERE meta_key IN ('read_more_links', 'read_more_color_scheme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('read_more_links', 'read_more_color_scheme');

