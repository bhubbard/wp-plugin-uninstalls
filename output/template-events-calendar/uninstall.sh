#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ects_options'
wp option delete 'ect-install-date'
wp option delete 'ect-initial-save-version'
wp option delete 'cpfm_opt_in_choice_cool_events'
wp option delete 'ect-free-installDate'
wp option delete 'ect-ratingDiv'
wp option delete 'ect_elementor_notice_dismissed'
wp option delete 'ect_divi_notice_dismissed'
wp option delete 'ect-v'
wp option delete 'ect-type'
wp option delete 'settings_migration_status'
wp option delete 'ect_options'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'ect_extra_data_update'

