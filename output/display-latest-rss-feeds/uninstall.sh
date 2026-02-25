#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loq_latest_Feeds_limit'
wp option delete 'loq_latest_Feeds_title'
wp option delete 'loq_latest_Feeds_feeds_link'
wp option delete 'loq_latest_Feeds_title_link'
wp option delete 'loq_latest_Feeds_top_content'
wp option delete 'loq_latest_Feeds_bottom_content'

