-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aw_referrals_referrals_page', '_bswp_option_core_apiKey', 'mwb_cpr_social_enable', 'woocommerce_myaccount_page_id', 'wc_wishlists_page_id_my-lists', '_bswp_option_email_template_notifications', '_bswp_option_ui_template_notifications', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bswp_email_subject', 'referral_key', 'bswp_ui_template_settings', 'ign_project_id', 'ign_project_description', '_wishlist_first_name', '_wishlist_last_name', 'first_name', 'last_name', 'bswp_demo_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('bswp_email_subject', 'referral_key', 'bswp_ui_template_settings', 'ign_project_id', 'ign_project_description', '_wishlist_first_name', '_wishlist_last_name', 'first_name', 'last_name', 'bswp_demo_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('bswp_email_subject', 'referral_key', 'bswp_ui_template_settings', 'ign_project_id', 'ign_project_description', '_wishlist_first_name', '_wishlist_last_name', 'first_name', 'last_name', 'bswp_demo_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bswp_email_subject', 'referral_key', 'bswp_ui_template_settings', 'ign_project_id', 'ign_project_description', '_wishlist_first_name', '_wishlist_last_name', 'first_name', 'last_name', 'bswp_demo_page');

