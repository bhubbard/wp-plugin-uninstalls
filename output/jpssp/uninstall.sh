#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharedaddy_disable_resources'

# Delete Transients
wp transient delete 'jpssp-feedly-api'

