#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ad_wc_mailchimp_list_%' OR option_name LIKE '_site_transient_ad_wc_mailchimp_list_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mailchip_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mailchip_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mailchip_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mailchip_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mailchip_grouping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mailchip_grouping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mailchip_grouping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mailchip_grouping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mailchip_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mailchip_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mailchip_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mailchip_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_wc_mailchimp_opt_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_wc_mailchimp_opt_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_wc_mailchimp_opt_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_wc_mailchimp_opt_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vibe_course_free'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vibe_course_free'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vibe_course_free'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vibe_course_free'"
