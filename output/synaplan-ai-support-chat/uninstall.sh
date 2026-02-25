#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'synaplan_wp_db_version'
wp option delete 'synaplan_wp_version'
wp option delete 'synaplan_wp_setup_completed'
wp option delete 'synaplan_wp_widget_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'synaplan_wp_%'"
wp option delete 'synaplan_wp_verification_token'
wp option delete 'synaplan_wp_api_key'
wp option delete 'synaplan_wp_user_id'
wp option delete 'synaplan_wp_wizard_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_synaplan_wizard_data_%' OR option_name LIKE '_site_transient_synaplan_wizard_data_%'"
wp transient delete 'synaplan_wp_api_status'
wp transient delete 'synaplan_wp_widget_preview'

