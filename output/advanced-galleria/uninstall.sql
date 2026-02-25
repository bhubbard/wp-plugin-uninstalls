-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced_galleria_theme', 'advanced_galleria_thumb', 'advanced_galleria_large');

