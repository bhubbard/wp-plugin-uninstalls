#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subscribers_count'
wp option delete 'Subscribers_count'

# Delete Transients
wp transient delete 'gplus_count'
wp transient delete 'fb5_count'
wp transient delete 'twitter_count'
wp transient delete 'rss_count'

