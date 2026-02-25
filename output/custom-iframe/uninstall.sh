#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custif_pro_license_status'
wp option delete 'custif_pro_license_key'
wp option delete 'custif_installation_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_iframe_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_iframe_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_iframe_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_iframe_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_iframe_pro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_iframe_pro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_iframe_pro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_iframe_pro_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custif_rating_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custif_rating_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custif_rating_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custif_rating_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custif_rating_remind_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custif_rating_remind_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custif_rating_remind_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custif_rating_remind_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custif_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custif_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custif_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custif_elementor_notice_dismissed'"
