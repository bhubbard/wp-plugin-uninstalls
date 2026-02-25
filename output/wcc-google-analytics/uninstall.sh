#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_analytics_client_id'
wp option delete 'google_analytics_client_secret'
wp option delete 'google_analytics_auth'
wp option delete 'google_analytics_api_key'
wp option delete 'google_analytics_db_version'

