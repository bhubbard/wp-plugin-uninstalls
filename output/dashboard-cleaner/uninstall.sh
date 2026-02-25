#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dhcl_options'

# Delete Transients
wp transient delete 'dhcl_activate'

