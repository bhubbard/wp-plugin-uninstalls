-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('staffer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('staffer_staff_title', 'staffer_staff_phone', 'staffer_staff_email', 'staffer_staff_fb', 'staffer_staff_twitter', 'staffer_staff_linkedin', 'staffer_staff_gplus', 'staffer_staff_website', 'staffer_staff_instagram', 'staffer_staff_youtube', 'staffer_staff_github');
DELETE FROM wp_usermeta WHERE meta_key IN ('staffer_staff_title', 'staffer_staff_phone', 'staffer_staff_email', 'staffer_staff_fb', 'staffer_staff_twitter', 'staffer_staff_linkedin', 'staffer_staff_gplus', 'staffer_staff_website', 'staffer_staff_instagram', 'staffer_staff_youtube', 'staffer_staff_github');
DELETE FROM wp_termmeta WHERE meta_key IN ('staffer_staff_title', 'staffer_staff_phone', 'staffer_staff_email', 'staffer_staff_fb', 'staffer_staff_twitter', 'staffer_staff_linkedin', 'staffer_staff_gplus', 'staffer_staff_website', 'staffer_staff_instagram', 'staffer_staff_youtube', 'staffer_staff_github');
DELETE FROM wp_commentmeta WHERE meta_key IN ('staffer_staff_title', 'staffer_staff_phone', 'staffer_staff_email', 'staffer_staff_fb', 'staffer_staff_twitter', 'staffer_staff_linkedin', 'staffer_staff_gplus', 'staffer_staff_website', 'staffer_staff_instagram', 'staffer_staff_youtube', 'staffer_staff_github');

