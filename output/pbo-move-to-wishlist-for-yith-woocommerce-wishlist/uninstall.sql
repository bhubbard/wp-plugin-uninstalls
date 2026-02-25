-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith_wcwl_enabled', 'pbo_mtw_hook_for_link', 'pbo_mtw_hook_for_link_to_wishlist_page', 'pbo_mtw_label', 'pbo_mtw_successfully_moved_message', 'pbo_mtw_view_wishlist_label');

