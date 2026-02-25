-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seos_canonical', 'seos_keywords', 'seos_description', 'seos_google_verification', 'google_analytics', 'seos_yandex_verification', 'seos_bing_verification', 'seos_site_name', 'seos_facebook_image', 'seos_facebook_title', 'seos_facebook_description', 'seos_facebook_id', 'seos_locale', 'seos_locale_alternate', 'seos_locale_alternate1', 'seos_graph_url', 'seos_geo_region', 'seos_geo_placename', 'seos_geo_position', 'seos_icbm', 'seos_twitter_card', 'seos_twitter_site', 'seos_twitter_title', 'seos_twitter_description', 'seos_twitter_image', 'seos_sticky_1', 'seos_sticky_url_1', 'seos_publisher', 'seos_alexa_verification', 'seos_pinterest_verification');
DELETE FROM wp_options WHERE option_name LIKE 'seos_sticky_%';
DELETE FROM wp_options WHERE option_name LIKE 'seos_sticky_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'seos_sticky_color_sheme%';
DELETE FROM wp_options WHERE option_name LIKE 'seos_sticky_color_text%';
DELETE FROM wp_options WHERE option_name LIKE 'seos_note_datepicker_%';
DELETE FROM wp_options WHERE option_name LIKE 'seos_note_name_%';

