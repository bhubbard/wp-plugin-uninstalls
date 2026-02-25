#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'laxi_chatbot_enabled'
wp option delete 'laxi_wc_consumer_key'
wp option delete 'laxi_wc_consumer_secret'
wp option delete 'laxi_wc_api_key_id'

