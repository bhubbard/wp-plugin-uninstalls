#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hooks_reference_use_cache'

# Delete Transients
wp transient delete 'hooks_discovery_data'
wp transient delete 'hooks_discovery_plugins'
wp transient delete 'hooks_reference_cache'

