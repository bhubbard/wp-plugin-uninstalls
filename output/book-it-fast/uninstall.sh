#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bookitfast_api_url'
wp option delete 'bookitfast_currency'
wp option delete 'bookitfast_api_token'
wp option delete 'bookitfast_settings'
wp option delete 'bookitfast_api_key'
wp option delete 'bookitfast_endpoint'

# Delete Transients
wp transient delete 'bookitfast_login_reload'

