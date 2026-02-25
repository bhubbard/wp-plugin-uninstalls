-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etfw_transients', 'wc_lw_product_swatches_delete_on_uninstall', 'product_swatches_schedules', 'esfw_step_label', 'esfw_step', 'esfw_max_steps', 'psl_product_attribute', 'psl_product_attribute_terms', 'lw_swatches_tasks', 'productSwatchesEnableRegenerationSchedule', 'productSwatchesRegenerationScheduleInterval', 'esfw_running', 'esfw_completed', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE '%_delete_on_uninstall';
DELETE FROM wp_options WHERE option_name LIKE '%_disable_cache';
DELETE FROM wp_options WHERE option_name LIKE '%_position_in_list';

