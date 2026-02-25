#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssbm_delivery_method'
wp option delete 'ssbm_api_sending_key'
wp option delete 'ssbm_smtp_host'
wp option delete 'ssbm_smtp_port'
wp option delete 'ssbm_authentication'
wp option delete 'ssbm_smtp_username'
wp option delete 'ssbm_smtp_password'
wp option delete 'ssbm_encryption'
wp option delete 'ssbm_from_email'
wp option delete 'ssbm_force_from'
wp option delete 'ssbm_from_name'

# Delete Transients
wp transient delete 'ssbm_error_message'

