#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redbox_key'
wp option delete 'min_price_for_free'
wp option delete 'consumer_key'
wp option delete 'consumer_secret'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%ocwmaerror' OR option_name LIKE '_site_transient_%ocwmaerror'"
wp transient delete 'ocwma-first-rating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redbox_point_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redbox_point_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redbox_point_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redbox_point_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redbox_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redbox_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redbox_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redbox_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
