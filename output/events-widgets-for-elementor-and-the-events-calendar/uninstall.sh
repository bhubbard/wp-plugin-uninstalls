#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ectbe-install-date'
wp option delete 'ectbe_initial_save_version'
wp option delete 'ectbe-installDate'
wp option delete 'ectbe-ratingDiv'
wp option delete 'cpfm_opt_in_choice_cool_events'
wp option delete 'ectbe-v'
wp option delete 'ectbe-type'
wp option delete 'ectbe-migration-status'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'ectbe_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ectbe_exists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ectbe_exists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ectbe_exists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ectbe_exists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ectbe_style_migration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ectbe_style_migration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ectbe_style_migration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ectbe_style_migration'"
