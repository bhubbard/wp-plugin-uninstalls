-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_key', 'secret_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_testimonials_name', '_testimonials_description', '_testimonials_author_name', '_testimonials_designation', '_testimonials_profile_url', '_testimonials_youtube', '_testimonials_fb_url', '_testimonials_linkedin_url', '_testimonials_twitter', '_testimonials_rate', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_testimonials_name', '_testimonials_description', '_testimonials_author_name', '_testimonials_designation', '_testimonials_profile_url', '_testimonials_youtube', '_testimonials_fb_url', '_testimonials_linkedin_url', '_testimonials_twitter', '_testimonials_rate', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_testimonials_name', '_testimonials_description', '_testimonials_author_name', '_testimonials_designation', '_testimonials_profile_url', '_testimonials_youtube', '_testimonials_fb_url', '_testimonials_linkedin_url', '_testimonials_twitter', '_testimonials_rate', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_testimonials_name', '_testimonials_description', '_testimonials_author_name', '_testimonials_designation', '_testimonials_profile_url', '_testimonials_youtube', '_testimonials_fb_url', '_testimonials_linkedin_url', '_testimonials_twitter', '_testimonials_rate', '_thumbnail_id');

