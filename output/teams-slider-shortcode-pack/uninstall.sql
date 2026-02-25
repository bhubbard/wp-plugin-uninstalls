-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('position', 'facebook_link', 'twitter_link', 'google_plus_link', 'linkedin_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('position', 'facebook_link', 'twitter_link', 'google_plus_link', 'linkedin_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('position', 'facebook_link', 'twitter_link', 'google_plus_link', 'linkedin_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('position', 'facebook_link', 'twitter_link', 'google_plus_link', 'linkedin_link');

