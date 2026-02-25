#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dc_rtfw_activate'
wp option delete 'dc_rtfw_activate_cart'
wp option delete 'dc_rtfw_activate_wishlist'
wp option delete 'dc_rtfw_wishlist_page'

