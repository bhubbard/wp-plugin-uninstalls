#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ADD_TO_FEEDLY_active'
wp option delete 'ADD_TO_FEEDLY_feed_url'
wp option delete 'ADD_TO_FEEDLY_customtext'
wp option delete 'ADD_TO_FEEDLY_position'
wp option delete 'ADD_TO_FEEDLY_size'

