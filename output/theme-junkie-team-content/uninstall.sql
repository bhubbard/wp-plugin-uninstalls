-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tj_member_avatar', 'tj_member_position', 'tj_member_twitter_url', 'tj_member_facebook_url', 'tj_member_googleplus_url', 'tj_member_linkedin_url', 'tj_member_pinterest_url', 'tj_member_dribbble_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('tj_member_avatar', 'tj_member_position', 'tj_member_twitter_url', 'tj_member_facebook_url', 'tj_member_googleplus_url', 'tj_member_linkedin_url', 'tj_member_pinterest_url', 'tj_member_dribbble_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('tj_member_avatar', 'tj_member_position', 'tj_member_twitter_url', 'tj_member_facebook_url', 'tj_member_googleplus_url', 'tj_member_linkedin_url', 'tj_member_pinterest_url', 'tj_member_dribbble_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tj_member_avatar', 'tj_member_position', 'tj_member_twitter_url', 'tj_member_facebook_url', 'tj_member_googleplus_url', 'tj_member_linkedin_url', 'tj_member_pinterest_url', 'tj_member_dribbble_url');

