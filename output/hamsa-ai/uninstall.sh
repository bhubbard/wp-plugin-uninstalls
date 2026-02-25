#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hamsa_api_key'

# Delete Transients
wp transient delete 'hamsa_ai_notifications'

