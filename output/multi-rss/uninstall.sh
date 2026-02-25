#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'num_feeds_to_show'
wp option delete 'direction'
wp option delete 'multiRss_Header'
wp option delete 'multiRss_ShowOnMobile'
wp option delete 'multi_rss_version'

