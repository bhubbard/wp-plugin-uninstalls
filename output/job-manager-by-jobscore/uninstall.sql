-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%account_name';
DELETE FROM wp_options WHERE option_name LIKE '%page_id';
DELETE FROM wp_options WHERE option_name LIKE '%text_color';
DELETE FROM wp_options WHERE option_name LIKE '%bg_color';
DELETE FROM wp_options WHERE option_name LIKE '%font_family';
DELETE FROM wp_options WHERE option_name LIKE '%font_size';
DELETE FROM wp_options WHERE option_name LIKE '%line_height';
DELETE FROM wp_options WHERE option_name LIKE '%link_text_color';
DELETE FROM wp_options WHERE option_name LIKE '%link_bg_color';
DELETE FROM wp_options WHERE option_name LIKE '%link_font_weight';
DELETE FROM wp_options WHERE option_name LIKE '%link_font_size';
DELETE FROM wp_options WHERE option_name LIKE '%header_text_color';
DELETE FROM wp_options WHERE option_name LIKE '%header_bg_color';
DELETE FROM wp_options WHERE option_name LIKE '%header_font_size';
DELETE FROM wp_options WHERE option_name LIKE '%header_line_height';
DELETE FROM wp_options WHERE option_name LIKE '%zebra_stripe';
DELETE FROM wp_options WHERE option_name LIKE '%odd_row_bg_color';
DELETE FROM wp_options WHERE option_name LIKE '%even_row_bg_color';
DELETE FROM wp_options WHERE option_name LIKE '%row_border_bottom';
DELETE FROM wp_options WHERE option_name LIKE '%row_border_top';
DELETE FROM wp_options WHERE option_name LIKE '%source_subname';
DELETE FROM wp_options WHERE option_name LIKE '%css_url';
DELETE FROM wp_options WHERE option_name LIKE '%width';
DELETE FROM wp_options WHERE option_name LIKE '%display_fields';
DELETE FROM wp_options WHERE option_name LIKE '%sort_by';
DELETE FROM wp_options WHERE option_name LIKE '%filter_fields';
DELETE FROM wp_options WHERE option_name LIKE '%filters';
DELETE FROM wp_options WHERE option_name LIKE '%group_by';
DELETE FROM wp_options WHERE option_name LIKE '%list_type';
DELETE FROM wp_options WHERE option_name LIKE '%show_searchbar_count';
DELETE FROM wp_options WHERE option_name LIKE '%show_social_sharing';
DELETE FROM wp_options WHERE option_name LIKE '%show_talent_network';
DELETE FROM wp_options WHERE option_name LIKE '%show_header';
DELETE FROM wp_options WHERE option_name LIKE '%sample_jobs_count';
DELETE FROM wp_options WHERE option_name LIKE '%feed_url';

