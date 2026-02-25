-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vp_fontawesome_icons');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'eic_grid_data', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'eic_grid_data', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'eic_grid_data', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'eic_grid_data', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';

