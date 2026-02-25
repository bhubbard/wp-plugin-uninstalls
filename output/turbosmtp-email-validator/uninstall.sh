#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'turbosmtp_email_validator_enabled'
wp option delete 'turbosmtp_email_validator_api_timeout'
wp option delete 'turbosmtp_email_validator_consumer_key'
wp option delete 'turbosmtp_email_validator_consumer_secret'
wp option delete 'turbosmtp_email_validator_validation_forms'
wp option delete 'turbosmtp_email_validator_validation_pass'
wp option delete 'turbosmtp_email_validator_error_message'
wp option delete 'turbosmtp_email_validator_whitelist'
wp option delete 'turbosmtp_email_validator_general_settings'

# Delete Transients
wp transient delete 'turbosmtp_email_validator_subscription'

