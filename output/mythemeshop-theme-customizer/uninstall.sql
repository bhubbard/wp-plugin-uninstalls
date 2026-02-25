-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'widget_onepage_featured-widget', 'widget_onepage_buttons-widget', 'widget_onepage_features-widget', 'widget_onepage_counter-widget', 'widget_onepage_services-widget', 'widget_mts_widget_recent_tweets', 'widget_onepage_testimonials-widget', 'widget_onepage_clients-widget', 'widget_onepage_blog-widget', 'mts_customizer_flag', 'mts_twitter_plugin_last_cache_time', 'mts_twitter_plugin_tweets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

