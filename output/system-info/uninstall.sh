#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'systemi_dump_database'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

