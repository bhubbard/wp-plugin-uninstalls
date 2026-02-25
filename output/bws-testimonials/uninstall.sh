#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tstmnls_options'
wp option delete 'rtng_options'
wp option delete 'gglcptch_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'widget_tstmnls_testimonails_widget'
wp option delete 'bstwbsftwppdtplgns_options'
wp option delete 'recently_activated'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'sndr_options'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'bws_plugins_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonials_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonials_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonials_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonials_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonials_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonials_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonials_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonials_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
