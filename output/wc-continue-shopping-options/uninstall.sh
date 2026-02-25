#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'wc_continue_shopping_section_url'
wp option delete 'custom_link_for_continue'

