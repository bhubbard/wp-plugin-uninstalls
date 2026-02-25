#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'already_bought_enable_option'
wp option delete 'already_bought_enable_piaic'
wp option delete 'already_bought_enable_pwb'
wp option delete 'already_bought_add_to_cart_custom_msg'
wp option delete 'already_bought_custom_msg_pwb'
wp option delete 'already_bought_custom_msg_piaic'

