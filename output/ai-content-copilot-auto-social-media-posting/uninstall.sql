-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiccfb_facebook_settings', 'ai_content_facebook_settings', 'facebook_page_id');

