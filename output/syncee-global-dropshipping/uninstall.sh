#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'syncee_access_token'
wp option delete 'syncee_user_token'
wp option delete 'data_to_syncee_installer'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'

