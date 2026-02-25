-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qeapps_pwa_apple_icons_uploaded', 'qeapps_pwa_manifest_settings', 'qeappspwa_email_error_message', 'qeappspwa_email_success_message', 'error_notice_message', 'splash_error_notice_message', 'qepwa_android_count', 'Activated_Plugin');

