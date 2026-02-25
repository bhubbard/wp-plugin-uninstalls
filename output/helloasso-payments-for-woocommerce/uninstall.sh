#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_helloasso_settings'
wp option delete 'helloasso_access_token_asso'
wp option delete 'helloasso_refresh_token_asso'
wp option delete 'helloasso_testmode'
wp option delete 'helloasso_token_expires_in_asso'
wp option delete 'helloasso_refresh_token_expires_in_asso'
wp option delete 'helloasso_access_token'
wp option delete 'helloasso_refresh_token'
wp option delete 'helloasso_token_expires_in'
wp option delete 'helloasso_refresh_token_expires_in'
wp option delete 'helloasso_code_verifier'
wp option delete 'helloasso_state'
wp option delete 'helloasso_authorization_url'
wp option delete 'helloasso_organization_slug'
wp option delete 'helloasso_webhook_url'
wp option delete 'helloasso_webhook_data'
wp option delete 'woocommerce_db_version'

# Clear Cron Jobs
wp cron event delete 'hello_asso_cron_refresh_token_hook'

