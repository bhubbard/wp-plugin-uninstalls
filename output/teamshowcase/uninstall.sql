-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('profile_job_desc', 'profile_company', 'profile_location', 'profile_email', 'profile_facebook', 'profile_google_plus', 'profile_twitter', 'profile_linkedin', 'profile_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('profile_job_desc', 'profile_company', 'profile_location', 'profile_email', 'profile_facebook', 'profile_google_plus', 'profile_twitter', 'profile_linkedin', 'profile_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('profile_job_desc', 'profile_company', 'profile_location', 'profile_email', 'profile_facebook', 'profile_google_plus', 'profile_twitter', 'profile_linkedin', 'profile_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('profile_job_desc', 'profile_company', 'profile_location', 'profile_email', 'profile_facebook', 'profile_google_plus', 'profile_twitter', 'profile_linkedin', 'profile_url');

