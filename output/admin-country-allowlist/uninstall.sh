#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qweb_aca_access_key'
wp option delete 'qweb_aca_allowed_countries'
wp option delete 'qweb_aca_allow_known_proxies'
wp option delete 'qweb_aca_block_xmlrpc_access'

# Delete Transients
wp transient delete 'qweb_aca_quota_reached'

# Clear Cron Jobs
wp cron event delete 'qweb_aca_clear_old_cache_event'

