#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatasbot_client_id'
wp option delete 'chatasbot_api_key'
wp option delete 'chatasbot_base_url'

