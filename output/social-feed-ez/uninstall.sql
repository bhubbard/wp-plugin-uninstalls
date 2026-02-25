-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_feed_ez_app_id', 'social_feed_ez_app_secret', 'social_feed_ez_ll_access_token', 'social_feed_ez_page_id', 'social_feed_ez_access_token', 'social_feed_display_type', 'social_feed_ez_field__options');

