-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('c7wp_activation', 'c7wp_settings', 'c7wp-admin-notice-pages', 'c7wp-admin-notice-pages-missing', 'c7wp_remote_notices');
DELETE FROM wp_options WHERE option_name LIKE 'c7wp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'c7wp_notice_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'c7wp_notice_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'c7wp_notice_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'c7wp_notice_dismissed_%';

