-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_linkedin_autopublish_settings', 'wp_linkedin_autopublish_auth_settings', 'northern_beaches_websites', 'wp_linkedin_autopublish_get_companies', 'wp_linkedin_autopublish_get_profile');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_linkedin_share_message', '_dont_share_post_linkedin', '_profile_selection_linkedin', '_sent_to_linkedin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_linkedin_share_message', '_dont_share_post_linkedin', '_profile_selection_linkedin', '_sent_to_linkedin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_linkedin_share_message', '_dont_share_post_linkedin', '_profile_selection_linkedin', '_sent_to_linkedin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_linkedin_share_message', '_dont_share_post_linkedin', '_profile_selection_linkedin', '_sent_to_linkedin');

