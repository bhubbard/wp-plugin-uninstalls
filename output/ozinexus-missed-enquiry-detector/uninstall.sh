#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ozxmed_contact_page_id'
wp option delete 'ozxmed_contact_page_url'

# Delete Transients
wp transient delete 'ozxmed_last_scan'

