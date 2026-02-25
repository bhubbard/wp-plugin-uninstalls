#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_jwt_demo_creds'
wp option delete 'mo_jwt_admin_email'
wp option delete 'mo_jwt_config_settings'
wp option delete 'mo_jwt_host_name'
wp option delete 'mo_jwt_admin_phone'
wp option delete 'mo_verify_customer'
wp option delete 'mo_jwt_admin_customer_key'
wp option delete 'mo_jwt_admin_api_key'
wp option delete 'mo_jwt_customer_token'
wp option delete 'mo_jwt_new_customer'
wp option delete 'message'
wp option delete 'mo_jwt_new_registration'
wp option delete 'mo_jwt_registration_status'

