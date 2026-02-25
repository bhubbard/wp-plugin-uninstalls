-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpssmtp_smtp_ms', 'wpssmtp_smtp', 'wpssmtp_echk', 'wpss_resent', 'wpssmtp_keycheck_fail');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('error', 'attachments', 'recipients', 'headers', 'timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('error', 'attachments', 'recipients', 'headers', 'timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('error', 'attachments', 'recipients', 'headers', 'timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('error', 'attachments', 'recipients', 'headers', 'timestamp');

