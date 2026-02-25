#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bstwbsftwppdtplgns_options'
wp option delete 'recently_activated'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'rltdpstsplgn_options'
wp option delete 'widget_pplrpsts_popular_posts_widget'
wp option delete 'widget_ltstpsts_latest_posts_widget'
wp option delete 'widget_rltdpstsplgnwidget'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'bws_plugins_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rltdpstsplgn_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rltdpstsplgn_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rltdpstsplgn_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rltdpstsplgn_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ftrdpsts_add_to_featured_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ftrdpsts_add_to_featured_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ftrdpsts_add_to_featured_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ftrdpsts_add_to_featured_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pplrpsts_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pplrpsts_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pplrpsts_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pplrpsts_post_views_count'"
