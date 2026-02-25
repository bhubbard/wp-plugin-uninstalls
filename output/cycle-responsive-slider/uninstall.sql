-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caza_wp_cycle_settings', 'caza_wp_cycle_images');

