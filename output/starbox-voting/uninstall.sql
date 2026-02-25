-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('starbox_button', 'starbox_overlay', 'starbox_class', 'starbox_ghost', 'starbox_version', 'starbox_image');

