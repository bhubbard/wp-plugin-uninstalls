-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailchimp_registration', 'registration_terms', 'registration_terms_dialog_title', 'mailchimp_apikey', 'mailchimp_listid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'phone', 'phone_extension');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'phone', 'phone_extension');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'phone', 'phone_extension');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'phone', 'phone_extension');

