-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluentwiz_cloud_storage_manager_pro_plugin_license', 'fluentwiz_cloud_storage_manager_connections', 'fwcsm_configuration_email_consent', 'fwcsm_email_consent_step_dismissed');

