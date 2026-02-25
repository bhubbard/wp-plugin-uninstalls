-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grmlt_text', 'grmlt_diphthongs', 'grmlt_uar_js', 'grmlt_redirect', 'grmlt_enable_excerpts', 'grmlt_excerpt_length', 'grmlt_excerpt_more', 'grmlt_stwords', 'grmlt_one_letter_words', 'grmlt_two_letter_words', 'grmlt_enable_text_analysis', 'grmlt_localize_dates', 'grmlt_date_format', 'grmlt_custom_date_format', 'grmlt_enhance_search', 'grmlt_search_post_types', 'grmlt_accent_insensitive_search');

