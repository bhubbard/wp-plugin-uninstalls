-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('square_thumbnails_mailchimp_setup_result', 'square_thumbnails_pro_notifications');
DELETE FROM wp_options WHERE option_name LIKE '%_bgcolor';
DELETE FROM wp_options WHERE option_name LIKE '%_bg_type';
DELETE FROM wp_options WHERE option_name LIKE '%_jpeg_quality';
DELETE FROM wp_options WHERE option_name LIKE '%_halign';
DELETE FROM wp_options WHERE option_name LIKE '%_valign';
DELETE FROM wp_options WHERE option_name LIKE '%_force';
DELETE FROM wp_options WHERE option_name LIKE '%_min_size';
DELETE FROM wp_options WHERE option_name LIKE '%_small_action';
DELETE FROM wp_options WHERE option_name LIKE '%_addallsizes';
DELETE FROM wp_options WHERE option_name LIKE '%_selected_sizes';
DELETE FROM wp_options WHERE option_name LIKE '%_tooriginal';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sqt_pro_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('sqt_pro_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('sqt_pro_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sqt_pro_notice_dismissed');

