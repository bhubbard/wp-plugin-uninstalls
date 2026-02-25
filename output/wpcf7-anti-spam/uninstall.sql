-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf7_antispam_pass', 'wpcf7_antispam_hash', 'wpcf7_antispam_collector', 'wpcf7_antispam_mail_smtp_host', 'wpcf7_antispam_mail_smtp_port', 'wpcf7_antispam_mail_smtp_login', 'wpcf7_antispam_mail_smtp_pass', 'wpcf7_antispam_mail_sender', 'wpcf7_antispam_mail_recipient', 'wpcf7_antispam_mail_cc');

