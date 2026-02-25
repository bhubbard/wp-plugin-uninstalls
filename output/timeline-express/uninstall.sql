-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_type_rules_flushed_te-announcements', 'timeline_express_installed_add_ons', 'timeline_express_cache_enabled', 'timeline-express_rating_nobug', 'timeline_express_install_date', 'timeline_express_storage', 'timeline_express_do_activation_redirect', 'timeline-express_nobug', 'timeline_express_ad_transient', 'te_font_awesome_transient');
DELETE FROM wp_options WHERE option_name LIKE '%_nobug';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking';
DELETE FROM wp_options WHERE option_name LIKE 'timeline-express-query-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'announcement_color', 'announcement_icon', 'announcement_date', 'announcement_image_id', 'announcement_image', 'announcement_container_classes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'announcement_color', 'announcement_icon', 'announcement_date', 'announcement_image_id', 'announcement_image', 'announcement_container_classes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'announcement_color', 'announcement_icon', 'announcement_date', 'announcement_image_id', 'announcement_image', 'announcement_container_classes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'announcement_color', 'announcement_icon', 'announcement_date', 'announcement_image_id', 'announcement_image', 'announcement_container_classes');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

