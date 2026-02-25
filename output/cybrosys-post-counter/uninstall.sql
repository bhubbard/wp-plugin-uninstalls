-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpcp_view_count_option', 'cpcp_view_label', 'cpcp_word_count_option', 'cpcp_word_label', 'cpcp_char_count_option', 'cpcp_char_label', 'cpcp_display_content');

