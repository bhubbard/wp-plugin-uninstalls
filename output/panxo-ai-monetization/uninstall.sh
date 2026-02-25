#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'panxo_publisher_id'
wp option delete 'panxo_enabled'
wp option delete 'panxo_script_position'
wp option delete 'panxo_do_auto_register'
wp option delete 'panxo_setup_status'
wp option delete 'panxo_property_id'
wp option delete 'panxo_setup_error'
wp option delete 'panxo_user_id'
wp option delete 'panxo_registered_at'
wp option delete 'panxo_setup_token'
wp option delete 'panxo_script_hash'
wp option delete 'panxo_format_active'
wp option delete 'panxo_format_activated_at'

# Clear Cron Jobs
wp cron event delete 'panxo_check_learning_status'

