-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpse_sdevseo_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_su_title', 'sdevseo_title', '_su_description', 'sdevseo_desc', '_aioseop_title', '_aioseop_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_su_title', 'sdevseo_title', '_su_description', 'sdevseo_desc', '_aioseop_title', '_aioseop_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_su_title', 'sdevseo_title', '_su_description', 'sdevseo_desc', '_aioseop_title', '_aioseop_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_su_title', 'sdevseo_title', '_su_description', 'sdevseo_desc', '_aioseop_title', '_aioseop_description');

