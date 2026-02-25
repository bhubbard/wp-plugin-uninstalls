#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bkup_%'"
wp option delete 'c2c_disable_directory_listings'

# Delete Transients
wp transient delete 'c2c_ddl_activated'
wp transient delete 'c2c_ddl_regenerated'

