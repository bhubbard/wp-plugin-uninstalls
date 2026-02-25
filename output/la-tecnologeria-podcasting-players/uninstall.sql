-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ivoox_setting_color', 'tecnologeria_podcasting_version');

