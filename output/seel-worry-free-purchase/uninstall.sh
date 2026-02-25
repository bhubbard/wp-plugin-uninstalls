#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seelwopu_admin_user'
wp option delete 'seelwopu_debug_mode'
wp option delete 'seelwopu_wc_auth_token'
wp option delete 'seelwopu_wc_auth_date'
wp option delete 'seelwopu_oauth_state'
wp option delete 'seelwopu_oauth_timestamp'
wp option delete 'woocommerce_email_from_address'

