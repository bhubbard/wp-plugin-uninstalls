-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rc_db_version', 'rc_linktext', 'rc_beforelink', 'rc_afterlink', 'rc_cookie_days', 'rc_threshold', 'rc_textarea_msg', 'rc_allow_reporter_comment', 'rc_success', 'rc_already', 'rc_failure', 'rc_enable_email', 'rc_email', 'rc_email_subject', 'rc_email_msg', 'rc_publickey', 'rc_privatekey', 'rc_valid_error', 'rc_error');

