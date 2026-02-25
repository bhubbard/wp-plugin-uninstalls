#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alm_users_license_key'

# Delete Transients
wp transient delete 'alm_users_extension_pro_admin_notice'

