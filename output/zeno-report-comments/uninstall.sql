-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zrcmnt_threshold', 'zrcmnt_admin_notification', 'zrcmnt_admin_notification_each', 'zrcmnt_spamcheck', 'zrcmnt_ipblock_from_reporting', 'disallowed_keys');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zrcmnt_reported', 'zrcmnt_moderated');
DELETE FROM wp_usermeta WHERE meta_key IN ('zrcmnt_reported', 'zrcmnt_moderated');
DELETE FROM wp_termmeta WHERE meta_key IN ('zrcmnt_reported', 'zrcmnt_moderated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zrcmnt_reported', 'zrcmnt_moderated');

