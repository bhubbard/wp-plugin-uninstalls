-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smtpfm_smtp_settings', 'smtpfm_recaptcha_settings', 'smtpfm_email_templates', 'smtpfm_version', 'smtpfm_install_date', 'smtpfm_upgrade_date', 'smtpfm_upgraded_to_2');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smtpfm_fields', '_smtpfm_skin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smtpfm_fields', '_smtpfm_skin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smtpfm_fields', '_smtpfm_skin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smtpfm_fields', '_smtpfm_skin');

