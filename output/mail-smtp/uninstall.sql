-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smtp_host', 'smtp_port', 'smtp_username', 'smtp_password', 'smtp_from', 'smtp_fromname', 'smtp_replyto', 'smtp_ssl');

