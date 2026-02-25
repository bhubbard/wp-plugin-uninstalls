#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bigshiprestapi_api_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bigshiprestapi_api_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bigshiprestapi_api_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bigshiprestapi_api_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bigship_consumer_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bigship_consumer_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bigship_consumer_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bigship_consumer_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bigship_consumer_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bigship_consumer_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bigship_consumer_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bigship_consumer_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bigship_key_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bigship_key_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bigship_key_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bigship_key_id'"
