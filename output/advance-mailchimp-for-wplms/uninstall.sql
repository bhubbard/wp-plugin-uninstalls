-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'ad_wc_mailchimp_list_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mailchip_list', '_mailchip_grouping', '_mailchip_group', 'ad_wc_mailchimp_opt_in', 'vibe_course_free');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mailchip_list', '_mailchip_grouping', '_mailchip_group', 'ad_wc_mailchimp_opt_in', 'vibe_course_free');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mailchip_list', '_mailchip_grouping', '_mailchip_group', 'ad_wc_mailchimp_opt_in', 'vibe_course_free');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mailchip_list', '_mailchip_grouping', '_mailchip_group', 'ad_wc_mailchimp_opt_in', 'vibe_course_free');

