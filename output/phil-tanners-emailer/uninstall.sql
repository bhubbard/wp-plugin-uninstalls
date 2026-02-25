-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppt_emailer_version', 'wppt_emailer_smtpdebug', 'wppt_emailer_smtp_host', 'wppt_emailer_smtp_auth', 'wppt_emailer_port', 'wppt_emailer_username', 'wppt_emailer_password', 'wppt_emailer_smtpsecure');

