-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('backend_category_organizer_config', 'backend_category_organizer_option_name');

