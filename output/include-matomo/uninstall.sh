#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'matomo_url'
wp option delete 'matomo_site_id'
wp option delete 'matomo_disable_cookies'
wp option delete 'matomo_rss_campaign'
wp option delete 'matomo_rss_source'

