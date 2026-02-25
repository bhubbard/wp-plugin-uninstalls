-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agw_admin_notice_msg', 'agw_admin_notice_style', 'agw_admin_notice_enable');

