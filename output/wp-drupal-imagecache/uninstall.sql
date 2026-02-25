-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdi_presets', 'wpdi_sample_image_id', 'wpdi_delete_preset_queue');
DELETE FROM wp_options WHERE option_name LIKE 'wpdi_preset_%';

