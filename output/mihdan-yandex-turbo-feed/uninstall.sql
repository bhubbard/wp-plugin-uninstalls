-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mihdan_yandex_turbo_feed', 'mihdan_yandex_turbo_feed-transients', 'mihdan_yandex_turbo_feed_version', 'active_sitewide_plugins', 'cptui_post_types', 'cptui_taxonomies', 'acf_version', 'acf_deactivated_notice_id');
DELETE FROM wp_options WHERE option_name LIKE '%_flush_rewrite_rules';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE 'acf_network_upgrade_needed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mihdan_yandex_turbo_feed_review_dismissed', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('mihdan_yandex_turbo_feed_review_dismissed', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('mihdan_yandex_turbo_feed_review_dismissed', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mihdan_yandex_turbo_feed_review_dismissed', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_remove';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_remove';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_remove';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_remove';

