#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gcs_api_key'
wp option delete 'gcs_cse_id'
wp option delete 'gcs_search_type'

