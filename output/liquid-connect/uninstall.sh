#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liquid_connect_toggle'

# Delete Transients
wp transient delete 'liquid_admin_notices'

