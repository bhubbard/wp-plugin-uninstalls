-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcboost_wishlist_enable_guest_wishlist', 'wcboost_wishlist_guest_behaviour', 'wcboost_wishlist_guest_message', 'wcboost_wishlist_allow_adding_variations', 'wcboost_wishlist_redirect_after_add', 'wcboost_wishlist_page_id', 'wcboost_wishlist_title_default', 'wcboost_wishlist_auto_remove', 'wcboost_wishlist_page_show_title', 'wcboost_wishlist_clear_guest_wishlist_after_merge', 'wcboost_wishlist_page_show_desc', 'wcboost_wishlist_share', 'wcboost_wishlist_loop_button_position', 'wcboost_wishlist_button_type', 'wcboost_wishlist_exists_item_button_behaviour', 'wcboost_wishlist_ajax_bypass_cache', 'wcboost_wishlist_share_socials', 'wcboost_wishlist_single_button_position', 'wcboost_wishlist_button_style', 'wcboost_wishlist_button_hover_style', 'wcboost_wishlist_button_icon', 'wcboost_wishlist_button_icon_custom', 'wcboost_wishlist_button_text', 'wcboost_wishlist_version', 'wcboost_wishlist_edit_endpoint', 'wcboost_wishlist_rewrite_rules_hash', 'rewrite_rules', 'wcboost_wishlist_merge_guest_wishlist', 'wcboost_wishlist_enable_ajax_add_to_wishlist', 'wcboost_wishlist_table_columns', 'wcboost_wishlist_installing', 'wcboost_wishlist_auto_deactivate_free_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcboost_wishlist_merge_after_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcboost_wishlist_merge_after_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcboost_wishlist_merge_after_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcboost_wishlist_merge_after_login');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

