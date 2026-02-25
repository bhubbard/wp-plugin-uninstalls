#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cs_term_%'"

# Delete Transients
wp transient delete 'cs-framework-transient'

