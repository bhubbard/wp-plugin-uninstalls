-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_notes_widget_twitter_credentials', 'wp_notes_widget_defaults', 'wp_notes_widget_default_shortcode_settings', 'wpnw_version', 'default_wp_notes_created', 'twit_url_short', 'twit_url_short_s');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('WP_Notes_data', 'WP_Notes_twitter_data', 'WP_Notes_tweet_history', 'dismiss_wp_notes_widget_notice', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('WP_Notes_data', 'WP_Notes_twitter_data', 'WP_Notes_tweet_history', 'dismiss_wp_notes_widget_notice', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('WP_Notes_data', 'WP_Notes_twitter_data', 'WP_Notes_tweet_history', 'dismiss_wp_notes_widget_notice', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('WP_Notes_data', 'WP_Notes_twitter_data', 'WP_Notes_tweet_history', 'dismiss_wp_notes_widget_notice', '_wp_attachment_image_alt');

