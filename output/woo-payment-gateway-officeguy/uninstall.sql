-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('officeguy_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('OfficeGuyCompanyID', 'OfficeGuyAPIKey', 'OfficeGuyValidCredentials', 'OfficeGuyDonation', 'OfficeGuySubscription', '_transaction_id', '_duration_in_months', '_recurrences', 'wcfmmp_profile_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('OfficeGuyCompanyID', 'OfficeGuyAPIKey', 'OfficeGuyValidCredentials', 'OfficeGuyDonation', 'OfficeGuySubscription', '_transaction_id', '_duration_in_months', '_recurrences', 'wcfmmp_profile_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('OfficeGuyCompanyID', 'OfficeGuyAPIKey', 'OfficeGuyValidCredentials', 'OfficeGuyDonation', 'OfficeGuySubscription', '_transaction_id', '_duration_in_months', '_recurrences', 'wcfmmp_profile_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('OfficeGuyCompanyID', 'OfficeGuyAPIKey', 'OfficeGuyValidCredentials', 'OfficeGuyDonation', 'OfficeGuySubscription', '_transaction_id', '_duration_in_months', '_recurrences', 'wcfmmp_profile_settings');

