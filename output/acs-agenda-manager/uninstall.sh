#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acsagma_google_maps_api_key'
wp option delete 'acsagma_agenda_manager_plugin_version'
wp option delete 'acsagma_page'
wp option delete 'acsagma_delete_data_on_uninstall'

# Delete Transients
wp transient delete 'acsagma_agenda_events_cache'

