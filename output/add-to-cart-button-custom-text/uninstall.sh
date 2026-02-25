#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'add_to_cart_external'
wp option delete 'add_to_cart_grouped'
wp option delete 'add_to_cart_simple'
wp option delete 'add_to_cart_variable'
wp option delete 'add_to_cart_bookable'
wp option delete 'add_to_cart_external_single'
wp option delete 'add_to_cart_grouped_single'
wp option delete 'add_to_cart_simple_single'
wp option delete 'add_to_cart_variable_single'
wp option delete 'add_to_cart_bookable_single'
wp option delete 'add_to_cart_button_text_settings'

# Delete Transients
wp transient delete 'add-to-cart-custom-text-activado'

