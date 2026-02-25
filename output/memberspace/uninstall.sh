#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'memberspace_extra_security'
wp option delete 'memberspace_rules'
wp option delete 'memberspace_subdomain'
wp option delete 'memberspace_last_updated'
wp option delete 'memberspace_display_banner'
wp option delete 'memberspace_public_key'
wp option delete 'memberspace_site_contact'
wp option delete 'memberspace_site_ID'
wp option delete 'memberspace_last_sync_successful'

