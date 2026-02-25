-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_color_scheme', 'sp_layout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_fb_url', 'sp_twitter_url', 'sp_linkedin_url', 'sp_gplus_url', 'sp_staff_designation', 'sp_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_fb_url', 'sp_twitter_url', 'sp_linkedin_url', 'sp_gplus_url', 'sp_staff_designation', 'sp_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_fb_url', 'sp_twitter_url', 'sp_linkedin_url', 'sp_gplus_url', 'sp_staff_designation', 'sp_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_fb_url', 'sp_twitter_url', 'sp_linkedin_url', 'sp_gplus_url', 'sp_staff_designation', 'sp_status');

