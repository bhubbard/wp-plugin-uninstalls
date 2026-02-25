-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced_preloader_general', 'advanced_preloader_design', 'advanced_preloader_animation');
DELETE FROM wp_options WHERE option_name LIKE 'advanced_preloader_%';

