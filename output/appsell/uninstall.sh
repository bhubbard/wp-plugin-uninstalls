#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'appsell_api_key'
wp option delete 'appsell_error'
wp option delete 'appsell_error_message'

