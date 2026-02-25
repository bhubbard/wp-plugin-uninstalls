-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hurraki_tooltip_wiki', 'hurraki_tooltip_key_words_last_update_time', 'hurraki_tooltip_max_word', 'hurraki_tooltip_key_words_en', 'hurraki_tooltip_key_words_eo', 'hurraki_tooltip_key_words_de', 'hurraki_tooltip_key_words_ma', 'hurraki_tooltip_key_words_it', 'hurrakify_updating');
DELETE FROM wp_options WHERE option_name LIKE 'hurraki_tooltip_key_words_%';

