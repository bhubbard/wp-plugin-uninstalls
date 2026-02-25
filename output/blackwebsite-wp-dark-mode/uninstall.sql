-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blackwebsite_extra_options', 'blackwebsite_options', 'blackwebsite_predefine_options', 'blackwebsite_widget_options');

