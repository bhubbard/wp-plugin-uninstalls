-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp-am-last-action-data');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_account_subscribe_lists';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_error_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_error_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_error_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_error_notice');

