-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fpropdf_restrict_condition', 'fpropdf_restrict_user', 'fpropdf_restrict_role', 'fpropdf_enable_security', 'fpropdf_api_server', 'fpropdf_use_field_keys', 'fpropdf_licence', 'fpropdf_limit_dropdowns', 'fpropdf_installed_version', 'fpropdf_version', 'fpropdf_restrict_remote_requests', 'fpropdf_enable_local', 'fpropdf_demo_imported', 'fpropdf_automap', 'fpropdf_pdfaid_api_key', 'fpropdf_enable_previews', 'fpropdf_field_map_allowed', 'fpropdf_faster_uploads', 'fpropdf_disable_local', 'fpropdf_embedded_data', 'fpropdf_notification_restored', 'fpropdf_notification_deleted', 'fpropdf_notification_new_layout');

