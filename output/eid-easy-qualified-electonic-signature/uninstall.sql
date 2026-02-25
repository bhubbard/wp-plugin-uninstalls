-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eideasy_test_mode', 'eideasy_client_id', 'eideasy_secret', 'eideasy_provider_signatures_enabled', 'eideasy_signature_redirect', 'eideasy_notify_email_subject', 'eideasy_notify_email_content', 'eideasy_notify_email_sender', 'eideasy_pending_provider_signatures', 'eideasy_provider_signatures_notify', 'eideasy_pending_provider_lock', 'eideasy_no_emails', 'eideasy_no_download', 'eideasy_notify_email_address', 'eideasy_include_doc_with_notify_email', 'eideasy_skip_signing_flag', 'eideasy_cf7_user_email_field', 'eideasy_cf7_signed_forms');
DELETE FROM wp_options WHERE option_name LIKE 'eideasy_signing_state_%';
DELETE FROM wp_options WHERE option_name LIKE 'eideasy_signing_url_%';

