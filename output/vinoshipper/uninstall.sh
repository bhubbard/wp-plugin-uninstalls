#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vs_injector_account_id'
wp option delete 'vs_injector_theme'
wp option delete 'vs_injector_theme_dark'
wp option delete 'vs_injector_cart_position'
wp option delete 'vs_injector_cart_button'

