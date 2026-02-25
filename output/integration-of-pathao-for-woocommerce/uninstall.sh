#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pathao_access_token'
wp option delete 'pathao_refresh_token'
wp option delete 'woocommerce_pathao_settings'
wp option delete 'pathao_sandbox_mode'
wp option delete 'pathao_client_id'
wp option delete 'pathao_client_secret'
wp option delete 'pathao_installed'
wp option delete 'pathao_version'

# Clear Cron Jobs
wp cron event delete 'pathao_refresh_token_cron'

