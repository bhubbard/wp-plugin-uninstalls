#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rss-no-more-on'
wp option delete 'rss-no-more-em'
wp option delete 'rss-no-more-link'
wp option delete 'rss-no-more-footer'
wp option delete 'rss-no-more-hr'
wp option delete 'rss-no-more-style'
wp option delete 'rss-no-more-tracking'
wp option delete 'rss-no-more-utm-source'
wp option delete 'rss-no-more-utm-campaign'
wp option delete 'rss-no-more-utm-medium'

