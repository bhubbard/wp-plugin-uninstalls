#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'streaming_connect_service'
wp option delete 'BUNNY_LIBRARY_ID'
wp option delete 'BUNNY_ACCESS_KEY'
wp option delete 'amazon_s3_key'
wp option delete 'amazon_s3_secret'
wp option delete 'amazon_s3_region'
wp option delete 'amazon_s3_bucket'
wp option delete 'BUNNY_FILE_UPLOAD_LIMIT'
wp option delete 'AMAZON_FILE_UPLOAD_LIMIT'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'collection_id'"
