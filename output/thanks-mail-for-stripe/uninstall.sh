#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmfs_settings'

# Delete Transients
wp transient delete 'tmfs_webhook_status'

