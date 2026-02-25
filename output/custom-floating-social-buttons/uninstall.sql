-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('floating_social_display_side', 'whatsapp_contact_number', 'youtube_channel_url', 'facebook_username', 'twitter_username', 'instagram_username');

