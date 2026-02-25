#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acfgfs_api_key'

# Delete Transients
wp transient delete 'acfgfs_fonts'

