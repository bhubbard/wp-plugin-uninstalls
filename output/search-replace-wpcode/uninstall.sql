-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsrw_admin_notices', 'wsrw_activated', 'wsrw_install', 'wsrw_process', 'wsrw_search_history', 'wsrw_connect_token', 'wsrw_connect', 'wsrw_just_activated', 'wsrw_lite_just_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsrw_admin_notices', 'wsrw_dismissed_review_request', '_wsrw_replaced', '_wp_attachment_backup_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsrw_admin_notices', 'wsrw_dismissed_review_request', '_wsrw_replaced', '_wp_attachment_backup_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsrw_admin_notices', 'wsrw_dismissed_review_request', '_wsrw_replaced', '_wp_attachment_backup_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsrw_admin_notices', 'wsrw_dismissed_review_request', '_wsrw_replaced', '_wp_attachment_backup_sizes');

