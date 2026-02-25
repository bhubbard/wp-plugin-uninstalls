#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wod_opening_hours_from'
wp option delete 'wod_opening_hours_to'
wp option delete 'date_range'

