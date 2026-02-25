-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('danw_first_time_notifcation', 'danw_time_notifcation', 'danw_day_notification', 'danw_duration_notification', 'danw_text_notifcation_view', 'danw_show_powered_by', 'danw_display_notification', 'danw_viewed_post', 'danw_viewed_page', 'danw_text_notifcation_purchase', 'danw_viewed_product');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%count_viewed_post';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%count_viewed_post';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%count_viewed_post';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%count_viewed_post';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%time_viewed_post';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%time_viewed_post';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%time_viewed_post';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%time_viewed_post';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%count_viewed_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%count_viewed_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%count_viewed_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%count_viewed_page';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%time_viewed_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%time_viewed_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%time_viewed_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%time_viewed_page';

