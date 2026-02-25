-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcustompreloader_bg_color', 'wpcustompreloader_image', 'wpcustompreloader_screen');

