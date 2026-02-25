-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rss_feed_styles_enabled_readers', 'rss_feed_styles_enabled_buttons', 'rss_feed_styles_credit_disabled', 'rss_feed_styles_full_html', 'rss_feed_styles_secret_id', 'rss_feed_styles_upsell_url', 'rss_feed_styles_last_fetch_upsell');

