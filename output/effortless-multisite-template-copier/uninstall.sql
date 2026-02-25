-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wp_template_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'block_template_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_theme');

