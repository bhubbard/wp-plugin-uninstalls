#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twae_initial_save_version'
wp option delete 'twae-install-date'
wp option delete 'twae-alreadyRated'
wp option delete 'twae-installDate'
wp option delete 'twae_marketing_dismissed'
wp option delete 'twae_tec_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_migration_notice'"
wp option delete 'twae_hide_migration_notice'
wp option delete 'twae-free-v'
wp option delete 'twae-type'
wp option delete 'cpfm_opt_in_choice_cool-timeline'
wp option delete 'twae-v'
wp option delete 'twae-migration-status'

# Clear Cron Jobs
wp cron event delete 'twae_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twae_style_migration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twae_style_migration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twae_style_migration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twae_style_migration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twae_exists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twae_exists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twae_exists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twae_exists'"
