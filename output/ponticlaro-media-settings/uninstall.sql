-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ponticlaro_image_path', 'ponticlaro_image_attribs', 'ponticlaro_image_vals', 'ponticlaro_image_val_custom', 'ponticlaro_media_options', 'ponticlaro_image_path_saved');

