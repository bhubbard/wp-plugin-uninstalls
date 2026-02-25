#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtm-server-side-admin-options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%__generated' OR option_name LIKE '_site_transient_%__generated'"

