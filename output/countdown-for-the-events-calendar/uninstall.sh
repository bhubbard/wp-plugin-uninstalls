#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tecc-install-date'
wp option delete 'tecc_initial_save_version'
wp option delete 'tecc-ratingDiv'
wp option delete 'tecc-installDate'
wp option delete 'tecc-v'
wp option delete 'tecc-type'
wp option delete 'tecc-cpfm-data-sharing'
wp option delete 'tecc_settings'
wp option delete 'cpfm_opt_in_choice_cool_events'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'tecc_extra_data_update'

