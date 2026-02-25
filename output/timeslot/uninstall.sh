#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timeslot-company-tab'
wp option delete 'timeslot-email-tab'
wp option delete 'timeslot-payment-methods-tab'
wp option delete 'timeslot-booking-form-tab'
wp option delete 'timeslot_plugin_version'
wp option delete 'timeslot_db_version'
wp option delete 'timeslot-setup-complete'
wp option delete 'timeslot-business-hours'
wp option delete 'timeslot-holidays'
wp option delete 'timeslot-service-categories'
wp option delete 'timeslot-appearance-tab'

# Delete Transients
wp transient delete 'timeslot_import'

# Clear Cron Jobs
wp cron event delete 'tslot_create_multilang_services'

