-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcis_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcis_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcis_type', 'wpcis_images', 'wpcis_swap', 'wpcis_slider');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcis_type', 'wpcis_images', 'wpcis_swap', 'wpcis_slider');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcis_type', 'wpcis_images', 'wpcis_swap', 'wpcis_slider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcis_type', 'wpcis_images', 'wpcis_swap', 'wpcis_slider');

