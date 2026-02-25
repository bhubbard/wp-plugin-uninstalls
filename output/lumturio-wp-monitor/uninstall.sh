#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lumturio_site_uuid'
wp option delete 'lumturio_site_encryption_token'

# Delete Transients
wp transient delete 'update_plugins'

