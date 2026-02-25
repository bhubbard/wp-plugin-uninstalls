-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_email_recipients_section_enabled', 'alg_wc_email_recipients', 'alg_wc_email_recipients_forwarding_section_enabled', 'alg_wc_email_recipients_cc_email', 'alg_wc_email_recipients_bcc_email', 'alg_wc_email_recipients_version');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

