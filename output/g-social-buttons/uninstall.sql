-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsb_post_type', 'fist_icon_text', 'fist_icon_link', 'mail_text', 'mail_link', 'phone_text', 'phone_link', 'whatsapp_text', 'whatsapp_link', 'messenger_text', 'messenger_link', 'facebook_text', 'facebook_link', 'youtube_text', 'youtube_link', 'linkedin_text', 'linkedin_link', 'instagram_text', 'instagram_link', 'twitter_text', 'twitter_link', 'skype_text', 'skype_link', 'pinterest_text', 'pinterest_link', 'google_plus_text', 'google_plus_link', 'mobile_display', 'call_now_link', 'call_now_image', 'call_now_title', 'call_now_slogan', 'call_now_social_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gsb');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gsb');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gsb');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gsb');

