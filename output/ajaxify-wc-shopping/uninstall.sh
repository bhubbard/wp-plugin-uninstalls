#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'awcs-general-settings'

