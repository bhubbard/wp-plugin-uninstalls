-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xeweb-sam_admin_see_all_pages', 'xeweb-sam_redirect_page', 'xeweb-sam_shortcode_all_pages', 'xeweb-sam_message_no_posts', 'xeweb-sam_post_limit_widget', 'xeweb-sam_list_posts_text', 'xeweb-sam_allowed_post_types', 'xeweb-sam_admin_remove_empty_cats', 'xeweb-sam_auto_menu_remove', 'xeweb-sam_list_posts_link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('txsc_allowed_users');
DELETE FROM wp_usermeta WHERE meta_key IN ('txsc_allowed_users');
DELETE FROM wp_termmeta WHERE meta_key IN ('txsc_allowed_users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('txsc_allowed_users');

