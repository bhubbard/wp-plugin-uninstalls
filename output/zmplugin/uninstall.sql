-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_block', 'sidebars_widgets', 'zmtempformlocation', 'settings_errors', 'zm_blockpatterns_data_cache', 'zm_blockpatterns_category_cache', 'zmdesignexplorer_cache');

