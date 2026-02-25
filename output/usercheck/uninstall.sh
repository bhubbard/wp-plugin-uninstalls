#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usercheck_api_key'

# Delete Transients
wp transient delete 'usercheck_error_logs'

