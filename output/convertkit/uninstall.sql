-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WpFastestCacheExclude', 'settings_activecampaign', 'forms_for_campaign_monitor_forms', 'convertkit_version', '_wp_convertkit_settings_restrict_content', 'ck_code_verifier', 'doing_cron', 'convertkit-setup');
DELETE FROM wp_options WHERE option_name LIKE '%_last_queried';
DELETE FROM wp_options WHERE option_name LIKE '%-review-request';
DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_convertkit_broadcast_export_id', '_thumbnail_id', '_wp_attachment_image_alt', '_convertkit_broadcast_id', '_convertkit_convertkit_form', 'ck_default_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_convertkit_broadcast_export_id', '_thumbnail_id', '_wp_attachment_image_alt', '_convertkit_broadcast_id', '_convertkit_convertkit_form', 'ck_default_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_convertkit_broadcast_export_id', '_thumbnail_id', '_wp_attachment_image_alt', '_convertkit_broadcast_id', '_convertkit_convertkit_form', 'ck_default_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_convertkit_broadcast_export_id', '_thumbnail_id', '_wp_attachment_image_alt', '_convertkit_broadcast_id', '_convertkit_convertkit_form', 'ck_default_form');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_convertkit_action_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_convertkit_action_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_convertkit_action_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_convertkit_action_%';

