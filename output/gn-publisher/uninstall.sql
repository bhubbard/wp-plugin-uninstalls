-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cus_rewrite_update_time', 'gnpub_installed_version', 'gnpub_last_activation', 'gnpub_last_deactivation', 'gnpub_new_options', 'gnpub_shortcode_options', 'gnpub_google_index_api_settings', 'gnpub_giapi_requests', 'gnpub_include_featured_image', 'gnpub_is_default_feed', 'gnpub_websub_last_ping', 'gnpub_google_last_fetch', 'gnpub_news_sitmap', 'gnpub_setup_wizard_checklist', 'gnpub_activation_redirect', 'gnpub_pro_upgrade_license', 'gnpub_feed_list', 'gnpub_websub_lock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt', 'gnpub_modified_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt', 'gnpub_modified_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt', 'gnpub_modified_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt', 'gnpub_modified_count');

