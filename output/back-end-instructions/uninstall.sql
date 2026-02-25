-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bei_options', '_back_end_instructions', 'bei_options', 'site_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bei_instructions', 'admin_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bei_instructions', 'admin_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bei_instructions', 'admin_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bei_instructions', 'admin_color');

