#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blacklist_local'
wp option delete 'blacklist_exclude'

# Delete Transients
wp transient delete 'blacklist_update_process'

