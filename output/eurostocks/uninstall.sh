#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eurostocks_transmissions'
wp option delete 'eurostocks_makes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_transmissions_%'"
wp option delete 'eurostocks_categories'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_categories_%'"
wp option delete 'eurostocks_headlight_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_headlight_types_%'"
wp option delete 'eurostocks_fuel_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_fuel_types_%'"
wp option delete 'eurostocks_door_counts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_door_counts_%'"
wp option delete 'eurostocks_exterior_colors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_exterior_colors_%'"
wp option delete 'eurostocks_climatisations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_climatisations_%'"
wp option delete 'eurostocks_interior_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_interior_types_%'"
wp option delete 'eurostocks_parking_assistant'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_parking_assistant_%'"
wp option delete 'eurostocks_speed_controls'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_speed_controls_%'"
wp option delete 'eurostocks-anti-spam'
wp option delete 'eurostocks_cars'
wp option delete 'eurostocks_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cars'"
wp option delete 'eurostocks_models'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_models_%'"

# Clear Cron Jobs
wp cron event delete 'eurostocks_update_model_scheduler'
wp cron event delete 'eurostocks_update_model_job'
wp cron event delete 'eurostocks_clean_ip_history'
wp cron event delete 'eurostocks_cron_hook'

