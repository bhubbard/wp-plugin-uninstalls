-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-secure-settings_options', 'wpsp-background-color', 'wpsp-background-image', '_background_image', '_pin', '_crb_background', 'wpsp-logo', '_logo_image', '_logo_width', '_logo_height', '_pin_placeholder', '_submit_label', '_try_again_error', '_description', '_title_field', '_enable');

