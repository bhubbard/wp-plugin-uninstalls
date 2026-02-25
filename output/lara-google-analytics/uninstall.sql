-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lrgawidget_property_id');
DELETE FROM wp_options WHERE option_name LIKE '%global_options';

