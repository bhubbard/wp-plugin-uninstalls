#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lili_user_id'
wp option delete 'lili_auth_token'
wp option delete 'lili_challenge_id'
wp option delete 'lili_challenge'
wp option delete 'lili_auth_token_timestamp'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_lili_user_details_%' OR option_name LIKE '_site_transient_lili_user_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_lili_user_transactions_%' OR option_name LIKE '_site_transient_lili_user_transactions_%'"

