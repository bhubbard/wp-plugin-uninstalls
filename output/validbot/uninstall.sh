#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'validbot_api_key'
wp option delete 'validbot_email'
wp option delete 'validbot_subscriber'

