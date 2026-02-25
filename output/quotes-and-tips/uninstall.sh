#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bstwbsftwppdtplgns_options'
wp option delete 'recently_activated'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'cstmsrch_options'
wp option delete 'sndr_options'
wp option delete 'qtsndtps_options'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'bws_plugins_update'

# Clear Cron Jobs
wp cron event delete 'qtsndtps_update_quotes_tips_daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_qtsndtp_background_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_qtsndtp_background_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_qtsndtp_background_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_qtsndtp_background_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'off_cap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'off_cap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'off_cap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'off_cap'"
