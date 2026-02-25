-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daextam_options_version', 'daextam_database_version', 'daextam_dismissible_notice_a');
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_bulk_import_rows';
DELETE FROM wp_options WHERE option_name LIKE '%_pagination_statistics_menu';
DELETE FROM wp_options WHERE option_name LIKE '%_statistics_data_last_update';
DELETE FROM wp_options WHERE option_name LIKE '%_statistics_data_update_frequency';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_enable_autolinks';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_category_id';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_left_boundary';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_right_boundary';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_categories';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_tags';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_term_group_id';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_limit';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_case_sensitive_search';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_open_new_tab';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_use_nofollow';
DELETE FROM wp_options WHERE option_name LIKE '%_defaults_priority';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_supported_terms';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_enable_test_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_filter_priority';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_same_url_limit';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_random_prioritization';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_ignore_self_autolinks';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_categories_and_tags_verification';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_protect_attributes';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_protected_gutenberg_blocks';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_protected_gutenberg_custom_blocks';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_protected_gutenberg_custom_void_blocks';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_protected_tags';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_general_limit_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_general_limit_characters_per_autolink';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_general_limit_amount';
DELETE FROM wp_options WHERE option_name LIKE '%_analysis_set_max_execution_time';
DELETE FROM wp_options WHERE option_name LIKE '%_analysis_max_execution_time_value';
DELETE FROM wp_options WHERE option_name LIKE '%_analysis_set_memory_limit';
DELETE FROM wp_options WHERE option_name LIKE '%_analysis_memory_limit_value';
DELETE FROM wp_options WHERE option_name LIKE '%_analysis_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%_analysis_limit_posts_analysis';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_daextam_enable_autolinks');
DELETE FROM wp_usermeta WHERE meta_key IN ('_daextam_enable_autolinks');
DELETE FROM wp_termmeta WHERE meta_key IN ('_daextam_enable_autolinks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_daextam_enable_autolinks');

