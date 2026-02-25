-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('move_do_activation_redirect', 'htmove_widget_list', 'htmove_userdata_list', 'htmove_module_list', 'move_installed', 'MOVE_ADDONS_VERSION', 'yith_wcwl_wishlist_page_id', 'yith_wcwl_add_to_wishlist_text', 'yith_wcwl_browse_wishlist_text', 'yith_wcwl_product_added_text', 'job_manager_enable_types');

