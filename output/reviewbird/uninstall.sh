#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'reviewbird_%'"
wp option delete 'reviewbird_store_id'
wp option delete 'reviewbird_store_status'
wp option delete 'reviewbird_enable_widget'
wp option delete 'reviewbird_enable_schema'
wp option delete 'reviewbird_force_reviews_open'

# Delete Transients
wp transient delete 'reviewbird_oauth_error'
wp transient delete 'reviewbird_oauth_success'
wp transient delete 'reviewbird_star_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reviewbird_avg_stars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reviewbird_avg_stars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reviewbird_avg_stars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reviewbird_avg_stars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reviewbird_reviews_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reviewbird_reviews_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reviewbird_reviews_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reviewbird_reviews_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reviewbird_rating_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reviewbird_rating_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reviewbird_rating_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reviewbird_rating_counts'"
