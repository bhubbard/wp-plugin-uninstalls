#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'benribot_widget_embedded'
wp option delete 'benribot_client_key'
wp option delete 'benribot_connected'
wp option delete 'benribot_oauth_state'
wp option delete 'benribot_secret_key'
wp option delete 'benribot_consumer_key'
wp option delete 'benribot_consumer_secret'
wp option delete 'benribot_wc_api_key_id'

