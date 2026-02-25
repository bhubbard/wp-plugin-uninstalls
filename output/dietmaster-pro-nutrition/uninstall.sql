-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdmi_version', 'wpdmi', 'wpdmi_token_email_text', 'wpdmi_hide_notice', 'wpdmi_token_email_text ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'wpdmi_mobiletoken');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'wpdmi_mobiletoken');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'wpdmi_mobiletoken');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'wpdmi_mobiletoken');

