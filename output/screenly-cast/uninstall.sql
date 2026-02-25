-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('screenly_cast_enabled', 'screenly_previous_theme', 'screenly_cast_cache_duration', 'screenly_cast_logo', 'screenly_options_logo');
DELETE FROM wp_options WHERE option_name LIKE 'screenly_cast_%';

