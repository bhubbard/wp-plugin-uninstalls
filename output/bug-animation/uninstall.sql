-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buganimation_enabled', 'buganimation_min_bugs', 'buganimation_max_bugs', 'buganimation_mouse_over');

