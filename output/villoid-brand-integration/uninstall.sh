#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_villoid_access_token'
wp option delete 'woocommerce_villoid_user_id'
wp option delete 'woocommerce_villoid_has_auth_keys'
wp option delete 'woocommerce_villoid_gain_access_in_progress'

