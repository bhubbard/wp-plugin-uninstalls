#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storelocator_url'
wp option delete 'storelocator_path'
wp option delete 'storelocator_url_input'
wp option delete 'storelocator_path_input'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storelocator_getting_started_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storelocator_getting_started_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storelocator_getting_started_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storelocator_getting_started_notice'"
