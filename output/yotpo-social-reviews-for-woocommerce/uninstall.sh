#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yotpo_settings'
wp option delete 'wc_yotpo_just_installed'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'native_star_ratings_enabled'

