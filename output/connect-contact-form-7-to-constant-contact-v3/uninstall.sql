-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dd_cf7_mailing_lists', 'cf7_ctct_settings', 'cf7_ctct_extra_settings', 'dd_cf7_optin_email_settings', 'ctct_to_process');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ctct_cf7', 'dd-ctct-cf7-notice-counter', 'ctct_optin', '_billing_email', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_city', '_billing_state', '_billing_postcode', '_billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ctct_cf7', 'dd-ctct-cf7-notice-counter', 'ctct_optin', '_billing_email', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_city', '_billing_state', '_billing_postcode', '_billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ctct_cf7', 'dd-ctct-cf7-notice-counter', 'ctct_optin', '_billing_email', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_city', '_billing_state', '_billing_postcode', '_billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ctct_cf7', 'dd-ctct-cf7-notice-counter', 'ctct_optin', '_billing_email', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_city', '_billing_state', '_billing_postcode', '_billing_country');

