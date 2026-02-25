#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'biz_things_google_places_id'
wp option delete 'biz_things_google_places_search'
wp option delete 'biz_things_google_places_placeid'

