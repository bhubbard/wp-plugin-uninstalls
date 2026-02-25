-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stop-wp-emails-going-to-spam-settings-1');
DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismissed';

