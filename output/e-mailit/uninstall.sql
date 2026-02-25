-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emailit_options', 'emailit_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('emailit_exclude', 'emailit_ignore_notice', 'emailit_ignore_notice2', 'emailit_ignore_notice3', 'emailit_ignore_notice4');
DELETE FROM wp_usermeta WHERE meta_key IN ('emailit_exclude', 'emailit_ignore_notice', 'emailit_ignore_notice2', 'emailit_ignore_notice3', 'emailit_ignore_notice4');
DELETE FROM wp_termmeta WHERE meta_key IN ('emailit_exclude', 'emailit_ignore_notice', 'emailit_ignore_notice2', 'emailit_ignore_notice3', 'emailit_ignore_notice4');
DELETE FROM wp_commentmeta WHERE meta_key IN ('emailit_exclude', 'emailit_ignore_notice', 'emailit_ignore_notice2', 'emailit_ignore_notice3', 'emailit_ignore_notice4');

