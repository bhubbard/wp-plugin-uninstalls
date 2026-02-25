-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lebdev_block_emails', 'lebdev_smtp_bypass', 'lebdev_block_on_smtp', 'wp_mail_smtp', 'swpsmtp_options', 'wp_smtp_options', 'postman_options', 'fluentmail-settings');

