-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_sptp_settings', 'sp_wp_team_version', 'sp_wp_team_first_version', 'sp_wp_team_activation_date', 'sp_wp_team_db_version', 'sp_wpt_review_notice_dismiss', 'spwpteam_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_team_page_id%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sptp_add_member', '_sptp_generator_layout', '_sptp_generator', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sptp_add_member', '_sptp_generator_layout', '_sptp_generator', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sptp_add_member', '_sptp_generator_layout', '_sptp_generator', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sptp_add_member', '_sptp_generator_layout', '_sptp_generator', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_spf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_spf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_spf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_spf_errors_%';

