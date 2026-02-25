-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('short_bio', 'member_designation', 'member_email', 'member_website', 'member_mobile', 'member_phone', 'member_location', 'member_facebook', 'member_twitter', 'member_linkedin', 'member_youtube', 'member_google', 'member_beshto', 'member_vimeo');
DELETE FROM wp_usermeta WHERE meta_key IN ('short_bio', 'member_designation', 'member_email', 'member_website', 'member_mobile', 'member_phone', 'member_location', 'member_facebook', 'member_twitter', 'member_linkedin', 'member_youtube', 'member_google', 'member_beshto', 'member_vimeo');
DELETE FROM wp_termmeta WHERE meta_key IN ('short_bio', 'member_designation', 'member_email', 'member_website', 'member_mobile', 'member_phone', 'member_location', 'member_facebook', 'member_twitter', 'member_linkedin', 'member_youtube', 'member_google', 'member_beshto', 'member_vimeo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('short_bio', 'member_designation', 'member_email', 'member_website', 'member_mobile', 'member_phone', 'member_location', 'member_facebook', 'member_twitter', 'member_linkedin', 'member_youtube', 'member_google', 'member_beshto', 'member_vimeo');

