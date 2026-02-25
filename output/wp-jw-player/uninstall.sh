#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'headspace_%'"
wp option delete 'headspace_options'

# Delete Transients
wp transient delete 'plugin_slugs'

