-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nmgr_metabox_notices', 'nmgr_exclude_from_search', 'woocommerce_cart_redirect_after_add', 'nmgr_flush_rewrite_rules', 'nmgr_settings', 'nmgr_default_pro_fields_values', 'nmgrlite_version', 'nmgr_version', 'nmgr_pagename', 'nmgr_wishlist_pagename', 'nmgr_show_current_version_notices', 'nmgr_dismiss_removed_templates_notice', 'nmgr_license', 'nmgrcf_license', 'nmgr_licenses', 'nmgr_setup_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_task_running';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nmgr_expired', 'nmgr_wishlist_title', '_nmgr_user_id', 'trigger_created_wishlist_action', '_nmgr_guest', 'nmgr_enable_wishlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nmgr_expired', 'nmgr_wishlist_title', '_nmgr_user_id', 'trigger_created_wishlist_action', '_nmgr_guest', 'nmgr_enable_wishlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nmgr_expired', 'nmgr_wishlist_title', '_nmgr_user_id', 'trigger_created_wishlist_action', '_nmgr_guest', 'nmgr_enable_wishlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nmgr_expired', 'nmgr_wishlist_title', '_nmgr_user_id', 'trigger_created_wishlist_action', '_nmgr_guest', 'nmgr_enable_wishlist');

