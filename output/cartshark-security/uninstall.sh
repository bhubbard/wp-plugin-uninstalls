#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cartshark_tracker_enabled'
wp option delete 'cartshark_account_id'
wp option delete 'cartshark_website_id'
wp option delete 'cartshark_activated_time'
wp option delete 'cartshark_version'
wp option delete 'cartshark_requirements_met'
wp option delete 'cartshark_missing_requirements'
wp option delete 'cartshark_setup_complete'
wp option delete 'cartshark_tracker_status'
wp option delete 'cartshark_subscription_status'
wp option delete 'cartshark_user_data'
wp option delete 'cartshark_public_key_encrypted'
wp option delete 'cartshark_private_key_encrypted'
wp option delete 'cartshark_api_keys_updated'
wp option delete 'cartshark_encryption_key'
wp option delete 'cartshark_tracker_snippet'
wp option delete 'cartshark_tracker_version'
wp option delete 'cartshark_tracker_last_updated'
wp option delete 'cartshark_last_sync'
wp option delete 'cartshark_activation_date'
wp option delete 'cartshark_first_activation'
wp option delete 'cartshark_delete_data_on_uninstall'

# Delete Transients
wp transient delete 'cartshark_auth_token'
wp transient delete 'cartshark_account_stats'
wp transient delete 'cartshark_website_data'
wp transient delete 'cartshark_subscription_data'
wp transient delete 'cartshark_tracker_status'
wp transient delete 'cartshark_api_cache'

