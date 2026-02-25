#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metype-account-id'
wp option delete 'metype-primary-color'
wp option delete 'metype-bg-color'
wp option delete 'metype-font-color'
wp option delete 'metype-feed-widget-active'
wp option delete 'metype-bg-id'
wp option delete 'metype-font-id'

