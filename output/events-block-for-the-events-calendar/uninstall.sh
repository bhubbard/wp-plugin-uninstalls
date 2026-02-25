#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ebec-install-date'
wp option delete 'ebec_initial_save_version'
wp option delete 'ebec-alreadyRated'
wp option delete 'ebec_activation_time'
wp option delete 'ebec_spare_me'
wp option delete 'ebec-v'
wp option delete 'cpfm_opt_in_choice_cool_events'
wp option delete 'classic-editor-replace'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'ebec_extra_data_update'

