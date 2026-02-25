-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onematix_chatbot_id', 'onematix_show_everywhere', 'onematix_show_only_selected', 'onematix_selected_posts', 'onematix_excluded_posts', 'onematix_chatbot_id2', 'onematix_show_everywhere2', 'onematix_show_only_selected2', 'onematix_selected_posts2', 'onematix_excluded_posts2');

