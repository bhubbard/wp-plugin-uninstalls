#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'supportai_apikey'
wp option delete 'supportai_active_chatbot_id'

