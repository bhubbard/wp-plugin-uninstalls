-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('infocob_tracking_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('infocob_tracking_admin_form_config', 'infocob_tracking_admin_form_email_demande', 'infocob_tracking_admin_form_start', 'infocob_tracking_admin_form_end', 'infocob_tracking_admin_form_sendinblue', 'infocob_tracking_admin_form_sendinblue_no_user', 'infocob_tracking_admin_form_email_demande_html');
DELETE FROM wp_usermeta WHERE meta_key IN ('infocob_tracking_admin_form_config', 'infocob_tracking_admin_form_email_demande', 'infocob_tracking_admin_form_start', 'infocob_tracking_admin_form_end', 'infocob_tracking_admin_form_sendinblue', 'infocob_tracking_admin_form_sendinblue_no_user', 'infocob_tracking_admin_form_email_demande_html');
DELETE FROM wp_termmeta WHERE meta_key IN ('infocob_tracking_admin_form_config', 'infocob_tracking_admin_form_email_demande', 'infocob_tracking_admin_form_start', 'infocob_tracking_admin_form_end', 'infocob_tracking_admin_form_sendinblue', 'infocob_tracking_admin_form_sendinblue_no_user', 'infocob_tracking_admin_form_email_demande_html');
DELETE FROM wp_commentmeta WHERE meta_key IN ('infocob_tracking_admin_form_config', 'infocob_tracking_admin_form_email_demande', 'infocob_tracking_admin_form_start', 'infocob_tracking_admin_form_end', 'infocob_tracking_admin_form_sendinblue', 'infocob_tracking_admin_form_sendinblue_no_user', 'infocob_tracking_admin_form_email_demande_html');

