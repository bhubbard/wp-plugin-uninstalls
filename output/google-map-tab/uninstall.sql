-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('id_tabs', 'max_width', 'min_width', 'height', 'map_type', 'all', 'view_all', 'active', 'info', 'background_color', 'text_color', 'db_table_version');

