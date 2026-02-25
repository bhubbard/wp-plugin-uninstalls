#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecsa-install-date'
wp option delete 'ecsa_initial_save_version'
wp option delete 'ecsa-ratingDiv'
wp option delete 'ecsa-installDate'
wp option delete 'ecsa-v'
wp option delete 'ecsa-type'
wp option delete 'cpfm_opt_in_choice_cool_events'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'ecsa_extra_data_update'

