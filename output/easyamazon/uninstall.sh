#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amazon_id_global'
wp option delete 'checkGlobalTracking'
wp option delete 'checkCache'
wp option delete 'cacheTime'
wp option delete 'amazonApiKey'
wp option delete 'amazonApiSecretKey'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eaAuthorTracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eaAuthorTracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eaAuthorTracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eaAuthorTracking'"
