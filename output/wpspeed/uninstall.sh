#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpspeed_settings'
wp option delete 'ftp_credentials'

# Delete Transients
wp transient delete 'wpspeed_notices'

