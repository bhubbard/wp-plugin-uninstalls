-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailchimp_api', 'add_prostatus_mailChimp', 'allcat_status_mailchimp', '_mailchimpCustom', '_mailchimp_checkbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_email', '_mailchimpProSingle', 'billing_phone', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_country', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'mailchimp_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_email', '_mailchimpProSingle', 'billing_phone', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_country', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'mailchimp_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_email', '_mailchimpProSingle', 'billing_phone', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_country', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'mailchimp_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_email', '_mailchimpProSingle', 'billing_phone', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_country', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'mailchimp_checkbox');

