#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slideshow-reloaded-last-fetch-upsell'
wp option delete 'slideshow-reloaded-roles-updated'
wp option delete 'slideshow_reloaded_upsell_url'
wp option delete 'slideshow_reloaded_secret_id'

