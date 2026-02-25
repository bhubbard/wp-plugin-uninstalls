-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpba_version', 'wpba_installed_timestamp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpba/notice_disabled/feedback', 'first_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpba/notice_disabled/feedback', 'first_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpba/notice_disabled/feedback', 'first_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpba/notice_disabled/feedback', 'first_name');

