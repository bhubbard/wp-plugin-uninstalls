-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asd_passkey_activation_notice', 'asd_p4ssk3y_admin_login_form_style', 'asd_p4ssk3y_key1', 'asd_p4ssk3y_webpush_public_key', 'asd_p4ssk3y_membership', 'asd_p4ssk3y_admin_password_confirmation', 'asd_p4ssk3y_key2', 'asd_p4ssk3y_web_id', 'asd_p4ssk3y_api_server', 'asd_p4ssk3y_eauth_url', 'asd_p4ssk3y_fedcm_url', 'asd_web_id', 'asd_google_client_id', 'asd_webpush_public_key');

