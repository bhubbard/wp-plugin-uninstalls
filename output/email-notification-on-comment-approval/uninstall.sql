-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enocp_from', 'enocp_cc', 'enocp_subject', 'enocp_email_content', 'enocp_bcc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('allow_notification');
DELETE FROM wp_usermeta WHERE meta_key IN ('allow_notification');
DELETE FROM wp_termmeta WHERE meta_key IN ('allow_notification');
DELETE FROM wp_commentmeta WHERE meta_key IN ('allow_notification');

