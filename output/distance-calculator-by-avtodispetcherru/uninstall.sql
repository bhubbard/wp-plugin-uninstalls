-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dc_type', 'autodisp_page_id', 'auto_disp_menu_item_id', 'sidebars_widgets');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

