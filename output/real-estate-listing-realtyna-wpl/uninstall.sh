#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'wpl_auto_tour'
wp option delete 'wpl_version'
wp option delete 'wpl_basic_migration'
wp option delete 'wpl_addon_idx_user_credentials'
wp option delete 'wpl_addon_idx_user_steps_done'
wp option delete 'wpl_addon_idx_mls_data'
wp option delete 'wpl_addon_idx_download_images'
wp option delete 'wpl_addon_idx_user_config_status'
wp option delete 'wpl_idx_addon_saved_trial_pids'
wp option delete 'wpl_idx_addon_trial_imported'
wp option delete 'wpl_addon_idx_trial_reseted'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpl_gmap_hits_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpl_gmap_hits_date_%'"
wp option delete 'wpl_addon_facebook_init_info'
wp option delete 'wpl_addon_facebook_catalog_id'
wp option delete 'wpl_facebook_addon_property_list'

# Clear Cron Jobs
wp cron event delete 'rlty_check_user_license'

