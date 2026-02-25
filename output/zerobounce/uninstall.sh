#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zerobounce_settings_validation_forms'
wp option delete 'zerobounce_settings_validation_pass'
wp option delete 'zerobounce_settings_did_you_mean'
wp option delete 'zerobounce_settings_api_zone'
wp option delete 'zerobounce_settings_api_key'
wp option delete 'zerobounce_settings_api_timeout'
wp option delete 'zerobounce_settings_error_message'
wp option delete 'zerobounce_settings_did_you_mean_error'
wp option delete 'zerobounce_settings_block_free_email'

