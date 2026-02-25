#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mage_reviews'
wp option delete 'widget_recent_reviews'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mage_%'"
wp option delete 'mage_reviews_activation'

# Delete Transients
wp transient delete 'mage_meta_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mage_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mage_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mage_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mage_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mage_rating_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mage_rating_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mage_rating_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mage_rating_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mage_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mage_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mage_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mage_zip'"
