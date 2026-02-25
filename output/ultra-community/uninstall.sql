-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultracomm-online-users', 'sidebars_widgets', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ultracomm-user-info', 'uc-stars-rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('ultracomm-user-info', 'uc-stars-rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('ultracomm-user-info', 'uc-stars-rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ultracomm-user-info', 'uc-stars-rating');

