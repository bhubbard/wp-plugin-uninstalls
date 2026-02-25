-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cuerda_total_choice', 'cuerda_total_post_status', 'cuerda_total_post_type', 'cuerda_total_post_ctrl', 'cuerda_total_cf_youtube', 'cuerda_total_link_override', 'cuerda_total_rel_urlpass', 'cuerda_total_optout_log', 'cuerda_total_optout_admininfo', 'cuerda_ynf_rel_count', 'cuerda_total_last_delta_run_ts', 'cuerda_rev_status_migrated', 'cuerda_ynf_id', 'cuerda_ynf_output_summary', 'cuerda_ynf_subheadline_cf', 'cuerda_ynf_title', 'cuerda_ynf_enclosure_alt', 'cuerda_ynf_rel_photo', 'cuerda_ynf_cf_rel_photo_title', 'cuerda_ynf_cf_rel_photo_url', 'cuerda_ynf_rel_cf_use', 'cuerda_ynf_cf_creator', 'cuerda_ynf_priority', 'cuerda_ynf_articletype', 'cuerda_ynf_ftp_server', 'cuerda_ynf_ftp_user_name', 'cuerda_ynf_ftp_password', 'cuerda_ynf_ftp_remote_dir', 'cuerda_ynf_ftp_port', 'cuerda_ynf_ftp_secure', 'cuerda_ynf_ftp_put', 'cuerda_ynf_icatch', 'cuerda_ynf_result_info', 'cuerda_ynf_debug_info', 'cuerda_ynf_ldap_user', 'cuerda_ynf_ldap_pass', 'cuerda_cached_categories', 'cuerda_cached_tags', 'cuerda_cached_authors');
DELETE FROM wp_options WHERE option_name LIKE '%_logo';
DELETE FROM wp_options WHERE option_name LIKE '%_darkmodelogo';
DELETE FROM wp_options WHERE option_name LIKE '%_wide_logo';
DELETE FROM wp_options WHERE option_name LIKE '%_title';
DELETE FROM wp_options WHERE option_name LIKE '%_url';
DELETE FROM wp_options WHERE option_name LIKE '%add_icatch';
DELETE FROM wp_options WHERE option_name LIKE '%enclosure_alt';
DELETE FROM wp_options WHERE option_name LIKE '%hide_icatch_caption';
DELETE FROM wp_options WHERE option_name LIKE '%hide_icatch_credit';
DELETE FROM wp_options WHERE option_name LIKE '%title';
DELETE FROM wp_options WHERE option_name LIKE '%cf_creator';
DELETE FROM wp_options WHERE option_name LIKE '%cf_creator_url';
DELETE FROM wp_options WHERE option_name LIKE 'cuerda_ynf_put_cooldown_%';
DELETE FROM wp_options WHERE option_name LIKE 'cuerda_ynf_guard_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cuerda_total_has_publish', '_cuerda_total_touched_ts', '_cuerda_total_demoted', '_cuerda_post_exclude_ynf', '_cuerda_revision_status', 'cuerda_revision_status', '_cuerda_ynf_rev', '_wp_attachment_image_alt', '_thumbnail_id', '_cuerda_ynf_first_sent', '_cuerda_ynf_last_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cuerda_total_has_publish', '_cuerda_total_touched_ts', '_cuerda_total_demoted', '_cuerda_post_exclude_ynf', '_cuerda_revision_status', 'cuerda_revision_status', '_cuerda_ynf_rev', '_wp_attachment_image_alt', '_thumbnail_id', '_cuerda_ynf_first_sent', '_cuerda_ynf_last_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cuerda_total_has_publish', '_cuerda_total_touched_ts', '_cuerda_total_demoted', '_cuerda_post_exclude_ynf', '_cuerda_revision_status', 'cuerda_revision_status', '_cuerda_ynf_rev', '_wp_attachment_image_alt', '_thumbnail_id', '_cuerda_ynf_first_sent', '_cuerda_ynf_last_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cuerda_total_has_publish', '_cuerda_total_touched_ts', '_cuerda_total_demoted', '_cuerda_post_exclude_ynf', '_cuerda_revision_status', 'cuerda_revision_status', '_cuerda_ynf_rev', '_wp_attachment_image_alt', '_thumbnail_id', '_cuerda_ynf_first_sent', '_cuerda_ynf_last_hash');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_cuerda_post_exclude_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_cuerda_post_exclude_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_cuerda_post_exclude_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cuerda_post_exclude_%';

