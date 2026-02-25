#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_Plugin'
wp option delete 'rivio_settings'
wp option delete 'rivio_just_installed'
wp option delete 'default_star_ratings_enabled'
wp option delete 'woocommerce_enable_review_rating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
