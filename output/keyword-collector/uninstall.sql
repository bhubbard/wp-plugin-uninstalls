-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('before_list', 'after_list', 'before_items', 'after_items', 'num', 'api_key', 'country_shortcode', 'update_interval', 'delete_interval', 'auto_insert_post', 'auto_insert_page', 'auto_insert_firma', 'auto_tag_insert', 'custom_field_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('key_words', 'ecpt_last_update', 'key_words_date_use');
DELETE FROM wp_usermeta WHERE meta_key IN ('key_words', 'ecpt_last_update', 'key_words_date_use');
DELETE FROM wp_termmeta WHERE meta_key IN ('key_words', 'ecpt_last_update', 'key_words_date_use');
DELETE FROM wp_commentmeta WHERE meta_key IN ('key_words', 'ecpt_last_update', 'key_words_date_use');

