#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arvan-cloud-cdn-status'
wp option delete 'arvan-cloud-cdn-api_key'
wp option delete 'arvan-cloud-cdn-automatic-cleaning'

# Delete Transients
wp transient delete 'currently_requested_for_automatic_add_domain'

