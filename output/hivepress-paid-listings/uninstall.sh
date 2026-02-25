#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_listing_package_allow_free'
wp option delete 'hp_listing_enable_moderation'
wp option delete 'hp_product_listing_feature'
wp option delete 'hp_listing_featuring_period'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_moderated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_moderated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_moderated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_moderated'"
