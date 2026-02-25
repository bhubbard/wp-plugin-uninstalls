-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dcfme_subscribe_text', 'recorp_divi_mailchimp', 'dcfme_mailchimp_rc_api', 'dcfme_mailchimp_rc_lists', 'divi_contact_form_mailchimp_rc_extension_redirect', 'dcfme_license_key');

