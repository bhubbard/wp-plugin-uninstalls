-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bg_forreaders_zoom', 'bg_forreaders_generate_opds', 'bg_forreaders_before', 'bg_forreaders_after', 'bg_forreaders_single', 'bg_forreaders_excat', 'bg_forreaders_cats', 'bg_forreaders_type_post', 'bg_forreaders_type_page', 'bg_forreaders_while_displayed', 'bg_forreaders_links', 'bg_forreaders_prompt', 'bg_forreaders_separator', 'bg_forreaders_while_saved', 'bg_forreaders_offline_query', 'bg_forreaders_stack', 'bg_forreaders_cron_updated', 'bg_forreaders_stack_interval', 'bg_forreaders_all_checktime', 'bg_forreaders_all_interval', 'bg_forreaders_log_checktime', 'bg_forreaders_log_interval', 'bg_forreaders_book_folder', 'bg_forreaders_while_starttime', 'bg_forreaders_pdf', 'bg_forreaders_epub', 'bg_forreaders_mobi', 'bg_forreaders_fb2', 'bg_forreaders_author_field', 'bg_forreaders_publishing_year', 'bg_forreaders_genre', 'bg_forreaders_add_title', 'bg_forreaders_add_author', 'bg_forreaders_cover_title', 'bg_forreaders_cover_author', 'bg_forreaders_cover_site', 'bg_forreaders_cover_year', 'bg_forreaders_cover_thumb', 'bg_forreaders_cover_image', 'bg_forreaders_text_color', 'bg_forreaders_bg_color', 'bg_forreaders_left_offset', 'bg_forreaders_right_offset', 'bg_forreaders_top_offset', 'bg_forreaders_bottom_offset', 'bg_forreaders_memory_limit', 'bg_forreaders_time_limit', 'bg_forreaders_css', 'bg_forreaders_tags', 'bg_forreaders_extlinks');
DELETE FROM wp_options WHERE option_name IN ('bg_forreaders_allow_p');
DELETE FROM wp_options WHERE option_name LIKE 'bg_forreaders_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('for_readers', 'genre');
DELETE FROM wp_usermeta WHERE meta_key IN ('for_readers', 'genre');
DELETE FROM wp_termmeta WHERE meta_key IN ('for_readers', 'genre');
DELETE FROM wp_commentmeta WHERE meta_key IN ('for_readers', 'genre');

