-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_lightbox_images_for_divi_options', 'ayudawp_lightbox_activation_error');

