#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'erply-integration_id'
wp option delete 'woocommerce_api_enabled'
wp option delete 'erply-integration-use-development-sandbox'
wp option delete 'erply-integration-account'
wp option delete 'erply-integration-user'
wp option delete 'erply-integration-password'

