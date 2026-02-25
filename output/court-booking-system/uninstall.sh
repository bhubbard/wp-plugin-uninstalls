#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcb_version'
wp option delete 'pcb_default_currency'
wp option delete 'pcb_start_hour'
wp option delete 'pcb_end_hour'
wp option delete 'pcb_number_of_courts'
wp option delete 'pcb_booking_message'

