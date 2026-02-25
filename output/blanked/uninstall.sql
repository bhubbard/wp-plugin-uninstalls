-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blanked_disable_wp_head', 'blanked_disable_wp_body_open', 'blanked_remove_body_class', 'blanked_add_body_class', 'blanked_remove_post_class', 'blanked_add_post_class');
DELETE FROM wp_options WHERE option_name LIKE 'blanked_enable_post_type__%';
DELETE FROM wp_options WHERE option_name LIKE 'blanked_enable_special_page__%';

