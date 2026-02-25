-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_awp_feedback_email', 'login_awp_feedback_webhook');

