#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bstwbsftwppdtplgns_options'
wp option delete 'recently_activated'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'cstmsrch_options'
wp option delete 'sndr_options'
wp option delete 'prtfl_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%demo_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"
wp option delete 'prtfl_demo_options'
wp option delete 'widget_portfolio_technologies_widget'
wp option delete 'prtfl_tag_update'

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prtfl_information'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prtfl_information'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prtfl_information'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prtfl_information'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prtfl_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prtfl_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prtfl_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prtfl_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_title'"
