#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dismissed-wsc-notice-date'
wp option delete 'dismissed-wsc-notice'
wp option delete 'woo_sticky_cart'

