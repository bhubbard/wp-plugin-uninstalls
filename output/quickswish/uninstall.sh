#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickswish_do_activation_redirect'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'quickswish_installed'
wp option delete 'quickswish_version'

