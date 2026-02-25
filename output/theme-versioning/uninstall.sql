-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theme_versioning_settings', 'theme_versioning_adapters', 'theme_versioning_selected_adapter_class', 'theme_versioning_ui_mode');

