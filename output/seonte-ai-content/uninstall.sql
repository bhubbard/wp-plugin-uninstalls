-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sacassettings_options', 'sacastitles_options', 'seonte-ai-content_options', 'wswemail_subjects_options', 'wsw_options', 'last_posted_date', 'daily_post_count', 'last_posted_date_for_retro', 'facebook_page_access_token', 'facebook_page_id', 'sacas_we_working');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

