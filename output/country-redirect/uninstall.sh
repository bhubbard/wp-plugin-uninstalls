#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cntrd_redirect_%'"
wp option delete 'cntrd_whitelist_ip'
wp option delete 'cntrd_whitelist_bot'
wp option delete 'cntrd_engine_sxgeo'
wp option delete 'cntrd_engine_geoip2'
wp option delete 'cntrd_engine_ipapi'
wp option delete 'cntrd_version'

# Delete Transients
wp transient delete 'cntrd-activation-notice'

