-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daimma_options_version', 'daimma_dismissible_notice_a');
DELETE FROM wp_options WHERE option_name LIKE '%_import_menu_required_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_database_version';
DELETE FROM wp_options WHERE option_name LIKE '%_log_import_data';
DELETE FROM wp_options WHERE option_name LIKE '%_markdown_parser';
DELETE FROM wp_options WHERE option_name LIKE '%_cebe_markdown_html5';
DELETE FROM wp_options WHERE option_name LIKE '%_cebe_markdown_keep_list_start_number';
DELETE FROM wp_options WHERE option_name LIKE '%_cebe_markdown_enable_new_lines';
DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_enable_em';
DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_enable_strong';
DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_use_asterisk';
DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_use_underscore';
DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_unordered_list_markers';
DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_html_input';
DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_allow_unsafe_links';
DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_max_nesting_level';
DELETE FROM wp_options WHERE option_name LIKE '%_import_post_type';

