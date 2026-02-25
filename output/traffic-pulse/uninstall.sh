#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trafficpulse_api_token'
wp option delete 'trafficpulse_api_url'
wp option delete 'trafficpulse_plausible_url'
wp option delete 'trafficpulse_auto_insert'

