-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pkli_basic_options', 'pkli_locked_content_options', 'pkli_buddypress_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pkli_access_token', 'pkli_linkedin_id', 'pkli_linkedin_profile');
DELETE FROM wp_usermeta WHERE meta_key IN ('pkli_access_token', 'pkli_linkedin_id', 'pkli_linkedin_profile');
DELETE FROM wp_termmeta WHERE meta_key IN ('pkli_access_token', 'pkli_linkedin_id', 'pkli_linkedin_profile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pkli_access_token', 'pkli_linkedin_id', 'pkli_linkedin_profile');

