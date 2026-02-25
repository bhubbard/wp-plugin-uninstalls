-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posts_parent_container', 'pagination_container', 'article_contianer', 'load_on_scroll', 'lang_text_button_default', 'lang_text_button_loading', 'lang_text_button_nopost');

