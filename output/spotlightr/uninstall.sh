#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spotlightr_api_key'
wp option delete 'spotlightr_subdomain'
wp option delete 'spotlightr_token'
wp option delete 'spotlightr_username'

