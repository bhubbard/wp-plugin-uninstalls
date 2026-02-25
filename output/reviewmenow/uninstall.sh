#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_placeId'
wp option delete 'reviewme_logo_display'
wp option delete 'google_review_clientId'

