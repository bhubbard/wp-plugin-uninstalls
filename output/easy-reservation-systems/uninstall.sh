#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyresy_reservation_days'
wp option delete 'easyresy_reservation_time_slots'
wp option delete 'easyresy_reservation_max_people'
wp option delete 'easyresy_reservation_theme_color'

