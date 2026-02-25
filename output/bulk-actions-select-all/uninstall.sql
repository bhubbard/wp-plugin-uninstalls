-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basa_version', 'basa_installed_timestamp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('basa/notice_disabled/feedback', 'first_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('basa/notice_disabled/feedback', 'first_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('basa/notice_disabled/feedback', 'first_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('basa/notice_disabled/feedback', 'first_name');

