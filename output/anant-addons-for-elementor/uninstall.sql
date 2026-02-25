-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anant_tab_settings', 'wishlist_template_select', 'anant_tab2_settings', 'elementor_maintenance_mode_mode', 'elementor_maintenance_mode_template_id', 'Copyright', 'woocommerce_enable_review_rating', 'woocommerce_enable_myaccount_registration', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('template_type', '_display_on_template', 'post_type_posts', 'post_type_template', '_wp_attachment_image_alt', '_anant_user_wishlist', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('template_type', '_display_on_template', 'post_type_posts', 'post_type_template', '_wp_attachment_image_alt', '_anant_user_wishlist', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('template_type', '_display_on_template', 'post_type_posts', 'post_type_template', '_wp_attachment_image_alt', '_anant_user_wishlist', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('template_type', '_display_on_template', 'post_type_posts', 'post_type_template', '_wp_attachment_image_alt', '_anant_user_wishlist', 'thumbnail_id');

