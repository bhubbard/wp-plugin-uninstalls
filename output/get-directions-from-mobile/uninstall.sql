-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bg-color', 'text-size', 'googlemap_button_text', 'googlemap_link');

