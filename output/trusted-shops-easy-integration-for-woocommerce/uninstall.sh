#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ts_easy_integration_access_token'
wp option delete 'ts_easy_integration_version'
wp option delete 'woocommerce_gzd_version'
wp option delete 'woocommerce_version'
wp option delete 'ts_easy_integration_client_id'
wp option delete 'ts_easy_integration_client_secret'
wp option delete 'ts_easy_integration_has_encryption_error'

