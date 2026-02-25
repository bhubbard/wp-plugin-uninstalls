-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssh_sftp_updater_support_dismiss_page_notice_until', 'ftp_credentials', 'active_sitewide_plugins', 'ssh_sftp_updater_support_dismiss_dash_notice_until');

