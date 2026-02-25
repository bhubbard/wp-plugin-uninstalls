#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcfwc_key'
wp option delete 'rcfwc_secret'
wp option delete 'rcfwc_theme'
wp option delete 'rcfwc_login'
wp option delete 'rcfwc_register'
wp option delete 'rcfwc_reset'
wp option delete 'rcfwc_woo_checkout'
wp option delete 'rcfwc_guest_only'
wp option delete 'rcfwc_woo_login'
wp option delete 'rcfwc_woo_register'
wp option delete 'rcfwc_woo_reset'
wp option delete 'rcfwc_selected_payment_methods'
wp option delete 'rcfwc_woo_checkout_pos'
wp option delete 'rcfwc_scripts_all'
wp option delete 'rcfwc_tested'
wp option delete 'rcfwc_do_activation_redirect'

