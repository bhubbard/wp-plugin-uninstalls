#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailerlite_api_key'
wp option delete 'mailerlite_enabled'
wp option delete 'account_id'
wp option delete 'account_subdomain'
wp option delete 'mailerlite_popups_disabled'
wp option delete 'mailerlite_platform'
wp option delete 'mailerlite_double_optin_disabled'
wp option delete 'mailerlite_forms_user_role_settings'

