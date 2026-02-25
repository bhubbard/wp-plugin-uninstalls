#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'form04_sitelock_settings'

# Delete Transients
wp transient delete 'form04_sitelock_login_error'

