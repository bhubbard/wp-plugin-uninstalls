#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'purge_cache_for_cloudflare_api_key'
wp option delete 'purge_cache_for_cloudflare_api_email_address'
wp option delete 'purge_cache_for_cloudflare_urls'

# Delete Transients
wp transient delete 'purge_cache_for_cloudflare_zone_data'

