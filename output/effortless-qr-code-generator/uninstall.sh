#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'effortless_qrcode_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'effortless_qrcode_settings'

# Delete Transients
wp transient delete 'effortless_qrcode_cache'

