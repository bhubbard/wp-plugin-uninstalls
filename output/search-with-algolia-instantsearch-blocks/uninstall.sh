#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aib_algolia_app_id'
wp option delete 'aib_algolia_searchonly_api_key'

