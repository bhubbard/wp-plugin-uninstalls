#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_idp_new_certs'
wp option delete 'idp_keep_settings_intact'
wp option delete 'mo_idp_admin_email'
wp option delete 'mo_idp_admin_phone'
wp option delete 'mo_idp_protocol'
wp option delete 'mo_idp_entity_id'
wp option delete 'mo_idp_admin_customer_key'
wp option delete 'mo_idp_verify_customer'
wp option delete 'mo_idp_admin_api_key'
wp option delete 'mo_idp_new_registration'
wp option delete 'password_mismatch'
wp option delete 'mo_idp_new_x509_certs'
wp option delete 'mo_idp_admin_password'
wp option delete 'mo_idp_customer_token'
wp option delete 'mo_idp_registration_status'
wp option delete 'mo_idp_transactionId'
wp option delete 'sml_idp_lk'
wp option delete 't_site_status'
wp option delete 'site_idp_ckl'
wp option delete 'mo_saml_idp_plugin_version'
wp option delete 'mo_idp_message'
wp option delete 'mo_idp_usr_lmt'

