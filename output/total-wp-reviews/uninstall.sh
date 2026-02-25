#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'total_reviews_google_api_key'
wp option delete 'total_reviews'
wp option delete 'total_reviews_active'
wp option delete 'fbrev_active'
wp option delete 'total_reviews_language'
wp option delete 'total_reviews_version'

