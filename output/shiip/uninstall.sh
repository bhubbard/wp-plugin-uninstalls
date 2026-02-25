#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_shiip_user'
wp option delete 'wc_shiip_settings_originLocation'
wp option delete 'wc_shiip_settings_contactnumber'
wp option delete 'wc_shiip_settings_email'
wp option delete 'wc_shiip_user_token'
wp option delete 'wc_shiip_user_name'
wp option delete 'wc_shiip_settings_password'
wp option delete 'wc_shiip_exchangerate_usd'
wp option delete 'woocommerce_currency'

