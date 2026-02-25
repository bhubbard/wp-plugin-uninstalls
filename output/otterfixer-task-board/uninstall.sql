-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('of_tb_mode', 'of_tb_allow_assign', 'of_tb_enable_notices', 'of_tb_categories', 'of_tb_widget_limit', 'of_tb_delete_data_on_uninstall', 'of_tb_shared_tasks', 'of_tb_shared_templates', 'of_tb_shared_log');

