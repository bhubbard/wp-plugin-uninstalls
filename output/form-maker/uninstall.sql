-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contact_form_forms', 'wd_form_maker_version', 'fm_subscribe_email', 'two-front-page-speed', 'twb_images_total_size', 'twb_speed_score', 'tenweb_domain_id', 'tenweb_access_token', 'twb_show_cta', 'twb_hompage_optimized', 'fm_db_full_privileged', 'fm_db_full_privileged_notice', 'tenweb_webinar_status', 'twb_optimized_pages', 'tenweb_subscription_id', 'fm_update_check');
DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id';
DELETE FROM wp_options WHERE option_name LIKE '%_domain_id';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'fm_email_data_user_%';
DELETE FROM wp_options WHERE option_name LIKE 'fm_email_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'two_page_speed');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'two_page_speed');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'two_page_speed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'two_page_speed');

