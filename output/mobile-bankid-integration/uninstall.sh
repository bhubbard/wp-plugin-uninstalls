#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobile_bankid_integration_env'
wp option delete 'mobile_bankid_integration_certificate'
wp option delete 'mobile_bankid_integration_password'
wp option delete 'mobile_bankid_integration_wplogin'
wp option delete 'mobile_bankid_integration_registration'
wp option delete 'mobile_bankid_integration_terms'
wp option delete 'mobile_bankid_integration_session_secret'
wp option delete 'mobile_bankid_integration_woocommerce_login'
wp option delete 'mobile_bankid_integration_woocommerce_checkout_require_bankid'
wp option delete 'mobile_bankid_integration_woocommerce_age_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_bankid_integration_personal_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_bankid_integration_personal_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_bankid_integration_personal_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_bankid_integration_personal_number'"
