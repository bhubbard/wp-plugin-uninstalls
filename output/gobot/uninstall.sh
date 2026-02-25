#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gobot_apikey'

# Delete Transients
wp transient delete 'gobot-msg'

