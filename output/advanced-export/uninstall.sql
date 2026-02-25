-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

