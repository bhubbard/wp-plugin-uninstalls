-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('helpie-faq', 'helpie_faq_slug_updated', 'helpie_faq_slug_changed_from', 'helpie_faq_group_slug_changed_from', 'helpie_version', 'helpie_upgrades', 'tablesome_version', 'tablesome_upgrades', 'csf_demo_mode', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order', 'click_counter', 'faq_group_settings', 'helpie_menu_settings', 'helpie_woo_metabox', 'helpie_faq_group_items', 'question_types', 'helpie_faq_group_old_terms', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('order', 'click_counter', 'faq_group_settings', 'helpie_menu_settings', 'helpie_woo_metabox', 'helpie_faq_group_items', 'question_types', 'helpie_faq_group_old_terms', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('order', 'click_counter', 'faq_group_settings', 'helpie_menu_settings', 'helpie_woo_metabox', 'helpie_faq_group_items', 'question_types', 'helpie_faq_group_old_terms', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order', 'click_counter', 'faq_group_settings', 'helpie_menu_settings', 'helpie_woo_metabox', 'helpie_faq_group_items', 'question_types', 'helpie_faq_group_old_terms', 'dismissed_wp_pointers');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

