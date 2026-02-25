-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_pro_purchase', 'fv_db_version', 'fvSettings', 'fv_forms', 'fv-keys', 'fv_dashboard_widget_settings', 'fv-review', 'fv_pro_remind_later', 'fv_remind_later');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bricks_page_content_2', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bricks_page_content_2', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bricks_page_content_2', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bricks_page_content_2', '_elementor_data');

