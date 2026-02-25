-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7submittrack_count', 'cf7submittrack_date', 'cf7submittrack_delete_data_on_uninstall');

