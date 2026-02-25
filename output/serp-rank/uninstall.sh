#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'serpr_account_json'
wp option delete 'serpr_active_site'
wp option delete 'serpr_sites_data'
wp option delete 'serpr_cache_lifetime'
wp option delete 'serpr_excluded_keywords'

# Delete Transients
wp transient delete 'serpr_sites_cache'

