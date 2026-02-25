#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_element_cache_ttl'

# Delete Transients
wp transient delete 'update_plugins'

