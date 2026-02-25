-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_subscribe_activated', 'wp_subscribe_notice_views');
DELETE FROM wp_options WHERE option_name LIKE '%_lists';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_subscribe_ignore_notice', 'wp_subscribe_ignore_notice_2');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_subscribe_ignore_notice', 'wp_subscribe_ignore_notice_2');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_subscribe_ignore_notice', 'wp_subscribe_ignore_notice_2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_subscribe_ignore_notice', 'wp_subscribe_ignore_notice_2');

