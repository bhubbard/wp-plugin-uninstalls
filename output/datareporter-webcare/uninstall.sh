#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'datareporter_webcache_url'
wp option delete 'datareporter_client_id'
wp option delete 'datareporter_organisation_id'
wp option delete 'datareporter_website_id'

