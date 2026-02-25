-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('addonify_wishlist_plugin_review_status', 'woocommerce_myaccount_page_id', 'udp_agent_allow_tracking', 'udp_agent_tracking_msg_last_shown_at', 'udp_installed_agents', 'udp_active_agent_basename', 'addonify_wishlist_ask_for_review_transient');
DELETE FROM wp_options WHERE option_name LIKE '%wishlist_page';
DELETE FROM wp_options WHERE option_name LIKE '%remove_all_plugin_data_on_uninstall';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('addonify_wishlist_default_wishlist', 'addonify_wishlist_default_default');
DELETE FROM wp_usermeta WHERE meta_key IN ('addonify_wishlist_default_wishlist', 'addonify_wishlist_default_default');
DELETE FROM wp_termmeta WHERE meta_key IN ('addonify_wishlist_default_wishlist', 'addonify_wishlist_default_default');
DELETE FROM wp_commentmeta WHERE meta_key IN ('addonify_wishlist_default_wishlist', 'addonify_wishlist_default_default');

