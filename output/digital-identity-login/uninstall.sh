#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_digital_id_dock_configuration_details'
wp option delete 'mo_digital_id_ms_authenticator_callback_api_key'
wp option delete 'mo_digital_id_ms_authenticator_callback_api_key_iv'
wp option delete 'mo_digital_id_ms_authenticator_configuration_details'
wp option delete 'mo_digital_id_ms_authenticator_is_app_configured'
wp option delete 'mo_digital_id_supported_wallets'
wp option delete 'mo_digital_id_admin_email'
wp option delete 'mo_digital_id_encryption_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mo_digital_id_proof_request_%' OR option_name LIKE '_site_transient_mo_digital_id_proof_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mo_digital_id_proof_request_status_%' OR option_name LIKE '_site_transient_mo_digital_id_proof_request_status_%'"
wp transient delete 'mo_digital_identity_message'
wp transient delete 'mo_digital_identity_support_message'

