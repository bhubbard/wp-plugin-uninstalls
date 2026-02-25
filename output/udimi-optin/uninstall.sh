#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'udimi_optin_key'
wp option delete 'udimi_prime_features'
wp option delete 'udimi_user_email'
wp option delete 'udimi_allow_optin_tracking'
wp option delete 'udimi_is_last_success'
wp option delete 'udimi_optin_date'
wp option delete 'udimi_optin_script'

