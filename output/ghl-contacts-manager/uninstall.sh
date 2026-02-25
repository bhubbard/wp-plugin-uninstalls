#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghlcoma_api_key'
wp option delete 'ghlcoma_location_id'

# Delete Transients
wp transient delete 'ghlcoma_contacts_cache'
wp transient delete 'ghlcoma_opportunities_cache'
wp transient delete 'ghlcoma_pipelines_cache'

# Clear Cron Jobs
wp cron event delete 'ghlcoma_contacts_sync'
wp cron event delete 'ghlcoma_opportunities_sync'

