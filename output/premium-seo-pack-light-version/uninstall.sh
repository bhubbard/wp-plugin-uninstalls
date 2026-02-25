#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psp_fb_planner_user_pages'
wp option delete 'psp_hash'
wp option delete 'psp_depedencies_is_valid'
wp option delete 'psp_depedencies_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notice'"
wp option delete 'psp_do_activation_redirect'
wp option delete 'psp_socialsharing'
wp option delete 'psp_Minify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'psp_module_%'"
wp option delete 'psp_taxonomy_seo'
wp option delete 'psp_cronjobs_clean'
wp option delete 'psp_fix_backlinkbuilder'
wp option delete 'psp_module_Social_Stats'
wp option delete 'psp_db_version'
wp option delete 'psp_integrity_check'
wp option delete 'psp_fb_planner_token'
wp option delete 'psp_Minify_assets'
wp option delete 'psp_buddypress'
wp option delete 'psp_module_title_meta_format'
wp option delete 'psp_serp_nbrequests'
wp option delete 'psp_website_profile'
wp option delete 'psp_register_buyer'
wp option delete 'psp_register_item_id'
wp option delete 'psp_register_item_name'
wp option delete 'psp_register_email'
wp option delete 'psp_register_timestamp'
wp option delete 'psp_register_licence'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_permalinks'
wp option delete 'psp_tiny_compress_limits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_buyer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_item_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_licence'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_item_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_timestamp'"

# Delete Transients
wp transient delete 'psp-cronjobs-test-ok'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_mobile_pagespeed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_mobile_pagespeed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_mobile_pagespeed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_mobile_pagespeed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_desktop_pagespeed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_desktop_pagespeed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_desktop_pagespeed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_desktop_pagespeed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_w3c_validation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_w3c_validation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_w3c_validation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_w3c_validation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_sitemap_isincluded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_sitemap_isincluded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_sitemap_isincluded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_sitemap_isincluded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psp_social_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psp_social_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psp_social_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psp_social_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_socialsharing_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_socialsharing_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_socialsharing_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_socialsharing_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_wplannerfb_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_wplannerfb_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_wplannerfb_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_wplannerfb_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_wplannerfb_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_wplannerfb_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_wplannerfb_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_wplannerfb_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_wplannerfb_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_wplannerfb_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_wplannerfb_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_wplannerfb_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_wplannerfb_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_wplannerfb_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_wplannerfb_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_wplannerfb_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_wplannerfb_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_wplannerfb_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_wplannerfb_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_wplannerfb_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_wplannerfb_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_wplannerfb_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_wplannerfb_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_wplannerfb_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_wplannerfb_useimage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_wplannerfb_useimage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_wplannerfb_useimage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_wplannerfb_useimage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'psp_wplannerfb_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'psp_wplannerfb_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'psp_wplannerfb_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'psp_wplannerfb_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_google_authorship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_google_authorship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_google_authorship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_google_authorship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_locations_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_locations_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_locations_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_locations_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amzASIN'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amzASIN'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amzASIN'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amzASIN'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_stat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_stat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_stat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_stat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psp_smushit_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psp_smushit_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psp_smushit_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psp_smushit_status'"
