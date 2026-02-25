#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keyspider_organization_id'
wp option delete 'keyspider_api_key'
wp option delete 'keyspider_search_page'

