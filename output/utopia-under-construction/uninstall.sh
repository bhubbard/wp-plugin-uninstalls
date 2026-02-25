#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%utopia_ucp_options'"

# Delete Transients
wp transient delete 'seedprod_fonts'

