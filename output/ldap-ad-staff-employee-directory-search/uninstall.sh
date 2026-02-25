#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_ldap_ds_server_url'
wp option delete 'mo_ldap_ds_server_dn'
wp option delete 'mo_ldap_ds_server_password'
wp option delete 'mo_ldap_ds_service_account_status'
wp option delete 'mo_ldap_ds_search_base'
wp option delete 'mo_ldap_ds_use_tls'
wp option delete 'mo_ldap_ds_admin_email'
wp option delete 'mo_ldap_ds_admin_customer_key'
wp option delete 'mo_ldap_ds_customer_token'
wp option delete 'mo_ldap_ds_admin_phone'
wp option delete 'mo_ldap_ds_verify_customer'
wp option delete 'mo_ldap_ds_ldap_protocol'
wp option delete 'mo_ldap_ds_directory_server_value'
wp option delete 'mo_ldap_ds_ldap_server_address'
wp option delete 'mo_ldap_ds_ldap_port_number'
wp option delete 'mo_ldap_ds_ldaps_port_number'
wp option delete 'mo_ldap_ds_directory_server_custom_value'
wp option delete 'mo_ldap_ds_config'
wp option delete 'mo_ldap_ds_search_by_options'
wp option delete 'mo_ldap_ds_custom_styling'
wp option delete 'mo_ldap_ds_config_status'
wp option delete 'mo_ldap_ds_show_message'
wp option delete 'mo_ldap_ds_phone_number'

