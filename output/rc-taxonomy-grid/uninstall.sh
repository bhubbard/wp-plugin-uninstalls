#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_in'"

# Delete Transients
wp transient delete 'rctagr_admin_notice'

