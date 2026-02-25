#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prodshow_shopify_url'
wp option delete 'prodshow_shopify_access_token'
wp option delete 'prodshow_shopify_client_id'
wp option delete 'prodshow_shopify_client_secret'
wp option delete 'prodshow_cache_duration'
wp option delete 'prodshow_utm_source'
wp option delete 'prodshow_utm_medium'
wp option delete 'prodshow_utm_campaign'
wp option delete 'prodshow_shopify_api_version'

# Delete Transients
wp transient delete 'prodshow_oauth_success'
wp transient delete 'prodshow_oauth_error'
wp transient delete 'prodshow_api_version_check'

