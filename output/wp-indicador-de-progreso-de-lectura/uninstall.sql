-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpipl_color_barra_progreso', 'wpipl_version');
DELETE FROM wp_options WHERE option_name LIKE '%_color_barra_progreso';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

