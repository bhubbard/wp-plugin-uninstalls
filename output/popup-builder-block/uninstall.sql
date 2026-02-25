-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popupkit_onboard_status', 'pbb-settings-tabs', '__pbb_oppai__', '__pbb_license_key__', 'popupkit_templates_updated');
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pbb_posts_fonts', 'abTest', 'campaignType', 'status', 'scheduleDateTime', 'scheduleOnDateValue', 'scheduleOffDateValue', 'scheduleTimeZone');
DELETE FROM wp_usermeta WHERE meta_key IN ('pbb_posts_fonts', 'abTest', 'campaignType', 'status', 'scheduleDateTime', 'scheduleOnDateValue', 'scheduleOffDateValue', 'scheduleTimeZone');
DELETE FROM wp_termmeta WHERE meta_key IN ('pbb_posts_fonts', 'abTest', 'campaignType', 'status', 'scheduleDateTime', 'scheduleOnDateValue', 'scheduleOffDateValue', 'scheduleTimeZone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pbb_posts_fonts', 'abTest', 'campaignType', 'status', 'scheduleDateTime', 'scheduleOnDateValue', 'scheduleOffDateValue', 'scheduleTimeZone');

