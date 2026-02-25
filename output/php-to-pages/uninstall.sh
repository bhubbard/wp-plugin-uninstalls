#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'php_on_pages_version'
wp option delete 'php_on_pages_enabled_post_types'
wp option delete 'php_on_pages_wc_shop'
wp option delete 'php_on_pages_wc_cart'
wp option delete 'php_on_pages_wc_checkout'
wp option delete 'php_on_pages_remove_trailing_slash'

