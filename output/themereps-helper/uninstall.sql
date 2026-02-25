-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', '__themereps_helper_do_redirect', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_ficon', '_menu_item_megamenu', '_menu_item_column', '_menu_item_disablet', 'themereps_project_client', 'themereps_project_location', 'themereps_project_start_date', 'themereps_project_close_date', 'themereps_project_budget');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_ficon', '_menu_item_megamenu', '_menu_item_column', '_menu_item_disablet', 'themereps_project_client', 'themereps_project_location', 'themereps_project_start_date', 'themereps_project_close_date', 'themereps_project_budget');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_ficon', '_menu_item_megamenu', '_menu_item_column', '_menu_item_disablet', 'themereps_project_client', 'themereps_project_location', 'themereps_project_start_date', 'themereps_project_close_date', 'themereps_project_budget');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_ficon', '_menu_item_megamenu', '_menu_item_column', '_menu_item_disablet', 'themereps_project_client', 'themereps_project_location', 'themereps_project_start_date', 'themereps_project_close_date', 'themereps_project_budget');

