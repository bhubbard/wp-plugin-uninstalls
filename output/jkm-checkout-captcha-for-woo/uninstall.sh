#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jkmccfw_woo_login'
wp option delete 'jkmccfw_woo_register'
wp option delete 'jkmccfw_woo_checkout'
wp option delete 'jkmccfw_guest_only'
wp option delete 'jkmccfw_woo_checkout_pos'
wp option delete 'jkmccfw_login'
wp option delete 'jkmccfw_register'
wp option delete 'jkmccfw_woo_reset'
wp option delete 'jkmccfw_key'
wp option delete 'jkmccfw_secret'
wp option delete 'jkmccfw_theme'
wp option delete 'jkmccfw_selected_payment_methods'
wp option delete 'jkmccfw_tested'
wp option delete 'jkmccfw_activation_redirect'
wp option delete 'active_sitewide_plugins'

