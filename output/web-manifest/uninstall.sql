-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fwebmanifest_description', 'fwebmanifest_start_url', 'fwebmanifest_display', 'fwebmanifest_orientation', 'fwebmanifest_name', 'fwebmanifest_short_name', 'fwebmanifest_lang', 'fwebmanifest_dir', 'fwebmanifest_bgcolor', 'fwebmanifest_themecolor');

