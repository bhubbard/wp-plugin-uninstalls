-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloogooq_user_min_hits_key', 'cloogooq_user_min_hits_phr', 'cloogooq_user_min_char', 'cloogooq_user_include_numbers', 'cloogooq_user_exclude_numbers', 'cloogooq_user_min_font_size', 'cloogooq_user_min_font_color', 'cloogooq_user_max_number_of_items', 'cloogooq_user_max_font_size', 'cloogooq_user_max_font_color', 'cloogooq_user_perc_line_height', 'cloogooq_user_separator', 'cloogooq_user_sep_space_prior', 'cloogooq_user_sep_space_after', 'cloogooq_user_exclude_domain', 'cloogooq_user_exclude', 'cloogooq_user_include', 'cloogooq_user_table_name', 'cloogooq_user_table_key', 'cloogooq_user_include_local_search', 'cloogooq_user_table_name_local', 'cloogooq_user_table_key_local', 'cloogooq_user_querykeys', 'cloogooq_user_link_to', 'cloogooq_user_sort', 'cloogooq_user_scaling', 'cloogooq_user_limit', 'cloogooq_user_table_id');
DELETE FROM wp_options WHERE option_name LIKE 'cloogooq_%';

