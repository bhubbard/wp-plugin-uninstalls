#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cityevents_default_city'
wp option delete 'cityevents_default_limit'
wp option delete 'cityevents_default_cache_minutes'
wp option delete 'cityevents_default_date_format'

