#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hras_enabled'
wp option delete 'hras_api_key'
wp option delete 'hras_allowed_domain'
wp option delete 'hras_whitelisted_routes'
wp option delete 'hras_headless_redirect'

