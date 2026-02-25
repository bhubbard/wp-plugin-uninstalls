-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a3rw_ip_change_mail_sent', 'a3rw_check_ip_cron', 'a3rw_server_ip');

