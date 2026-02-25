#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_dcrm_admin_email'
wp option delete 'mo_dcrm_admin_password'
wp option delete 'mo_dcrm_admin_customer_key'
wp option delete 'mo_dcrm_admin_api_key'
wp option delete 'mo_dcrm_admin_phone'

