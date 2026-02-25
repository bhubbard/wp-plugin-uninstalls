#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liveit_block'

# Delete Transients
wp transient delete 'liveit_block_cache'

