-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('branda_black_friday_2021_dismissed', 'registration', 'active_sitewide_plugins', 'ub_stats', 'wpmudev_df_widget_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_welcome_dialog', '_wp_attachment_image_alt', 'tips_dismissed', 'show_tips', 'Branda_Cookie_Notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_welcome_dialog', '_wp_attachment_image_alt', 'tips_dismissed', 'show_tips', 'Branda_Cookie_Notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_welcome_dialog', '_wp_attachment_image_alt', 'tips_dismissed', 'show_tips', 'Branda_Cookie_Notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_welcome_dialog', '_wp_attachment_image_alt', 'tips_dismissed', 'show_tips', 'Branda_Cookie_Notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ub_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ub_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ub_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ub_log_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%recipient';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%recipient';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%recipient';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%recipient';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%from_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%from_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%from_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%from_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%from_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%from_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%from_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%from_email';

