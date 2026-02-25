-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poper-cache-notice', 'poper-dismiss-notice', 'poper_account_id', 'poper_account_id_verified', 'poper_account_id_md5', 'poper_dismiss_notice_temporary');

