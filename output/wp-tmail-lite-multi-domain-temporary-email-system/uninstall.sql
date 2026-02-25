-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_tmail_lite_imap_host', 'wp_tmail_lite_imap_port', 'wp_tmail_lite_imap_user', 'wp_tmail_lite_imap_pass', 'wp_tmail_lite_imap_domains', 'wp_tmail_lite_enable_ssl');

