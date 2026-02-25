#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfip_settings'
wp option delete 'cfip_log'
wp option delete 'cfip_banned_addresses'
wp option delete 'cloudflare_api_email'
wp option delete 'cloudflare_api_key'
wp option delete 'cfip_activated_on'

