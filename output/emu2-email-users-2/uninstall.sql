-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EMU2_build', 'EMU2_mail_function', 'EMU2_debug', 'EMU2_schedule_time', 'EMU2_double_place', 'EMU2_default_schedule_subject', 'EMU2_default_schedule_body', 'EMU2_version', 'EMU2_default_subject', 'EMU2_default_body', 'EMU2_default_mail_format', 'EMU2_max_bcc_recipients', 'EMU2_sender_name', 'EMU2_sender_address', 'EMU2_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('EMU2_ACCEPT_NOTIFICATION_USER_META', 'EMU2_ACCEPT_MASS_EMAIL_USER_META');
DELETE FROM wp_usermeta WHERE meta_key IN ('EMU2_ACCEPT_NOTIFICATION_USER_META', 'EMU2_ACCEPT_MASS_EMAIL_USER_META');
DELETE FROM wp_termmeta WHERE meta_key IN ('EMU2_ACCEPT_NOTIFICATION_USER_META', 'EMU2_ACCEPT_MASS_EMAIL_USER_META');
DELETE FROM wp_commentmeta WHERE meta_key IN ('EMU2_ACCEPT_NOTIFICATION_USER_META', 'EMU2_ACCEPT_MASS_EMAIL_USER_META');

