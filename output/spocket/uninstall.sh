#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spocket_store_authorization_key'
wp option delete 'spocket_shop_url'
wp option delete 'spocket_auth_token'
wp option delete 'spocket_user_id'
wp option delete 'spocket_connected'

