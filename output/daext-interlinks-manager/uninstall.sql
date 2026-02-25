-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daextinma_options_version', 'daextinma_database_version', 'daextinma_max_execution_time_value', 'daextinma_memory_limit_value');
DELETE FROM wp_options WHERE option_name LIKE '%_interlinks_options_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%_interlinks_optimization_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%_internal_links_data_last_update';
DELETE FROM wp_options WHERE option_name LIKE '%_internal_links_data_update_frequency';
DELETE FROM wp_options WHERE option_name LIKE '%_juice_data_last_update';
DELETE FROM wp_options WHERE option_name LIKE '%_juice_data_update_frequency';
DELETE FROM wp_options WHERE option_name LIKE '%_default_seo_power';
DELETE FROM wp_options WHERE option_name LIKE '%_optimization_num_of_characters';
DELETE FROM wp_options WHERE option_name LIKE '%_optimization_delta';
DELETE FROM wp_options WHERE option_name LIKE '%_penality_per_position_percentage';
DELETE FROM wp_options WHERE option_name LIKE '%_set_max_execution_time';
DELETE FROM wp_options WHERE option_name LIKE '%_set_memory_limit';
DELETE FROM wp_options WHERE option_name LIKE '%_dashboard_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%_limit_posts_analysis';
DELETE FROM wp_options WHERE option_name LIKE '%_juice_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%_remove_link_to_anchor';
DELETE FROM wp_options WHERE option_name LIKE '%_remove_url_parameters';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_daextinma_seo_power');
DELETE FROM wp_usermeta WHERE meta_key IN ('_daextinma_seo_power');
DELETE FROM wp_termmeta WHERE meta_key IN ('_daextinma_seo_power');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_daextinma_seo_power');

