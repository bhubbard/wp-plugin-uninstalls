-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gallery_markers_setting_option_name', 'galleries-markers-demo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('glm_params', 'slides');
DELETE FROM wp_usermeta WHERE meta_key IN ('glm_params', 'slides');
DELETE FROM wp_termmeta WHERE meta_key IN ('glm_params', 'slides');
DELETE FROM wp_commentmeta WHERE meta_key IN ('glm_params', 'slides');

