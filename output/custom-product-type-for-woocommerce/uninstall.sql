-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwpt_activated', 'cwpt_migirated', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cwpt_product_type_name_singular', 'cwpt_product_type_name_plural', 'cwpt_custom_taxonomy', 'cwpt_enable_badge', 'cwpt_enable_admin_fields', 'cwpt_admin_tab_fields', 'cwpt_product_layout', 'cwpt_badge_text', 'cwpt_badge_background_color', 'cwpt_badge_text_color', 'cwpt_admin_fields_tab_label', 'cwpt_front_position', '_product_type', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('cwpt_product_type_name_singular', 'cwpt_product_type_name_plural', 'cwpt_custom_taxonomy', 'cwpt_enable_badge', 'cwpt_enable_admin_fields', 'cwpt_admin_tab_fields', 'cwpt_product_layout', 'cwpt_badge_text', 'cwpt_badge_background_color', 'cwpt_badge_text_color', 'cwpt_admin_fields_tab_label', 'cwpt_front_position', '_product_type', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('cwpt_product_type_name_singular', 'cwpt_product_type_name_plural', 'cwpt_custom_taxonomy', 'cwpt_enable_badge', 'cwpt_enable_admin_fields', 'cwpt_admin_tab_fields', 'cwpt_product_layout', 'cwpt_badge_text', 'cwpt_badge_background_color', 'cwpt_badge_text_color', 'cwpt_admin_fields_tab_label', 'cwpt_front_position', '_product_type', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cwpt_product_type_name_singular', 'cwpt_product_type_name_plural', 'cwpt_custom_taxonomy', 'cwpt_enable_badge', 'cwpt_enable_admin_fields', 'cwpt_admin_tab_fields', 'cwpt_product_layout', 'cwpt_badge_text', 'cwpt_badge_background_color', 'cwpt_badge_text_color', 'cwpt_admin_fields_tab_label', 'cwpt_front_position', '_product_type', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';

