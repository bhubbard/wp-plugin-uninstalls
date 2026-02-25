#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prxml_gtin_key'
wp option delete 'prxml_mpn_key'
wp option delete 'prxml_brand_key'
wp option delete 'prxml_feed_slug'
wp option delete 'prxml_provider'
wp option delete 'prxml_refresh_rate'

# Delete Transients
wp transient delete 'prxml_xml_feed_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_assigned_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_assigned_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_assigned_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_assigned_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
