-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psp_fb_planner_user_pages', 'psp_hash', 'psp_depedencies_is_valid', 'psp_depedencies_do_activation_redirect', 'psp_do_activation_redirect', 'psp_socialsharing', 'psp_Minify', 'psp_taxonomy_seo', 'psp_cronjobs_clean', 'psp_fix_backlinkbuilder', 'psp_module_Social_Stats', 'psp_db_version', 'psp_integrity_check', 'psp_fb_planner_token', 'psp_Minify_assets', 'psp_buddypress', 'psp_module_title_meta_format', 'psp_serp_nbrequests', 'psp_website_profile', 'psp_register_buyer', 'psp_register_item_id', 'psp_register_item_name', 'psp_register_email', 'psp_register_timestamp', 'psp_register_licence', 'active_sitewide_plugins', 'woocommerce_force_ssl_checkout', 'woocommerce_permalinks', 'psp_tiny_compress_limits', 'psp-cronjobs-test-ok');
DELETE FROM wp_options WHERE option_name LIKE '%_is_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notice';
DELETE FROM wp_options WHERE option_name LIKE 'psp_module_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_register_key';
DELETE FROM wp_options WHERE option_name LIKE '%_register_email';
DELETE FROM wp_options WHERE option_name LIKE '%_register_buyer';
DELETE FROM wp_options WHERE option_name LIKE '%_register_item_id';
DELETE FROM wp_options WHERE option_name LIKE '%_register_licence';
DELETE FROM wp_options WHERE option_name LIKE '%_register_item_name';
DELETE FROM wp_options WHERE option_name LIKE '%_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_register_timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%_version_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('psp_score', 'psp_mobile_pagespeed', 'psp_desktop_pagespeed', 'psp_w3c_validation', 'psp_sitemap_isincluded', 'psp_meta', '_psp_social_stats', 'psp_socialsharing_count', 'psp_wplannerfb_title', 'psp_wplannerfb_permalink', 'psp_wplannerfb_description', 'psp_wplannerfb_caption', 'psp_wplannerfb_message', 'psp_wplannerfb_image', 'psp_wplannerfb_useimage', 'psp_google_authorship', 'psp_locations_meta', 'psp_status', 'psp_kw', '_amzASIN', '_wp_attachment_metadata', 'psp_smushit_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('psp_score', 'psp_mobile_pagespeed', 'psp_desktop_pagespeed', 'psp_w3c_validation', 'psp_sitemap_isincluded', 'psp_meta', '_psp_social_stats', 'psp_socialsharing_count', 'psp_wplannerfb_title', 'psp_wplannerfb_permalink', 'psp_wplannerfb_description', 'psp_wplannerfb_caption', 'psp_wplannerfb_message', 'psp_wplannerfb_image', 'psp_wplannerfb_useimage', 'psp_google_authorship', 'psp_locations_meta', 'psp_status', 'psp_kw', '_amzASIN', '_wp_attachment_metadata', 'psp_smushit_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('psp_score', 'psp_mobile_pagespeed', 'psp_desktop_pagespeed', 'psp_w3c_validation', 'psp_sitemap_isincluded', 'psp_meta', '_psp_social_stats', 'psp_socialsharing_count', 'psp_wplannerfb_title', 'psp_wplannerfb_permalink', 'psp_wplannerfb_description', 'psp_wplannerfb_caption', 'psp_wplannerfb_message', 'psp_wplannerfb_image', 'psp_wplannerfb_useimage', 'psp_google_authorship', 'psp_locations_meta', 'psp_status', 'psp_kw', '_amzASIN', '_wp_attachment_metadata', 'psp_smushit_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('psp_score', 'psp_mobile_pagespeed', 'psp_desktop_pagespeed', 'psp_w3c_validation', 'psp_sitemap_isincluded', 'psp_meta', '_psp_social_stats', 'psp_socialsharing_count', 'psp_wplannerfb_title', 'psp_wplannerfb_permalink', 'psp_wplannerfb_description', 'psp_wplannerfb_caption', 'psp_wplannerfb_message', 'psp_wplannerfb_image', 'psp_wplannerfb_useimage', 'psp_google_authorship', 'psp_locations_meta', 'psp_status', 'psp_kw', '_amzASIN', '_wp_attachment_metadata', 'psp_smushit_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'psp_wplannerfb_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'psp_wplannerfb_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'psp_wplannerfb_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'psp_wplannerfb_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_stat';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_stat';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_stat';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_stat';

