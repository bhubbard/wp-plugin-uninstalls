#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Amazon-wishlist-pro-listID'
wp option delete 'Amazon-wishlist-pro-sort-order'
wp option delete 'Amazon-wishlist-pro-websites'
wp option delete 'Amazon-wishlist-pro-use-cache'
wp option delete 'Amazon-wishlist-pro-invalidate-cache'
wp option delete 'Amazon-wishlist-pro-layout'
wp option delete 'Amazon-wishlist-pro-use-unsorted-list'

