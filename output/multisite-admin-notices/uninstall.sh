#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_notices'"

# Delete Transients
wp transient delete 'msan_notices'

