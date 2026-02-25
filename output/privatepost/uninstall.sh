#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_privatepost'
wp option delete 'PrivateColor'
wp option delete 'what_to_show'
wp option delete 'PrivateIndicator'
wp option delete 'MyPrivateCat'
wp option delete 'PrivateRSSFeedLocation'
wp option delete 'rss_language'

