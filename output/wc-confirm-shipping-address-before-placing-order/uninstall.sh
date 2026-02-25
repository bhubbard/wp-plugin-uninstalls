#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'

