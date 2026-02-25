-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nooz_options_changed', 'mdpartners_db_version', 'mdpartners_denied_email', 'mdpartners_approved_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nooz_release', '_nooz', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nooz_release', '_nooz', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nooz_release', '_nooz', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nooz_release', '_nooz', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';

