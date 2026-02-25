#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FLYING_ANALYTICS_VERSION'
wp option delete 'flying_analytics_method'
wp option delete 'flying_analytics_disable_on_login'
wp option delete 'flying_analytics_id'

