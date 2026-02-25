#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ngg_options'

# Delete Transients
wp transient delete 'dirsize_cache'

