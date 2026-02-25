-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ad_facebook_link', 'ad_twitter_link', 'ad_skype_link', 'ad_google_link', 'ad_instagram_link', 'ad_contact_number', 'ad_address', 'ad_map', 'image_location', 'footer_image_location', 'ad_footer_desc');

