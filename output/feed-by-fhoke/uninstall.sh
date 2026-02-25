#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbf_settings'

# Delete Transients
wp transient delete 'fbf_access_token'
wp transient delete 'fbf_access_token_expiry'
wp transient delete 'fbf_media'

