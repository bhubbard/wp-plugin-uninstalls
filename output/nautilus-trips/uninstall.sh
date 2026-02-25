#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nautilus_trips_api_key'
wp option delete 'nautilus_trips_admin_email'
wp option delete 'nautilus_trips_ships'
wp option delete 'nautilus_trips_years'
wp option delete 'nautilus_trips_months'
wp option delete 'nautilus_trips_destinations'
wp option delete 'nautilus_trips_page_id'

