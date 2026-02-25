#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lwpdm_menu_cart_activation_time'
wp option delete 'lwpdm_menu_cart_spare_me'
wp option delete 'lwp_menu_cart_options'

