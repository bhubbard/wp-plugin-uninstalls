#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rss_feed_styles_enabled_readers'
wp option delete 'rss_feed_styles_enabled_buttons'
wp option delete 'rss_feed_styles_credit_disabled'
wp option delete 'rss_feed_styles_full_html'
wp option delete 'rss_feed_styles_secret_id'
wp option delete 'rss_feed_styles_upsell_url'
wp option delete 'rss_feed_styles_last_fetch_upsell'

