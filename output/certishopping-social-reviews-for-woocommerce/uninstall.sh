#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'certishopping_settings'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'native_star_ratings_enabled'
wp option delete 'wc_certishopping_just_installed'
wp option delete 'woocommerce_weight_unit'

