-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gumlet_settings', 'gumlet_width_from_img', 'gumlet_width_from_flex', 'gumlet_min_width');

