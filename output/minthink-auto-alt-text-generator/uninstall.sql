-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mt_auto_atg_site_id', 'mt_auto_atg_welcome_dismissed', 'mt_auto_atg_activation_time', 'mt_auto_atg_external_service_notice_dismissed', 'mt_auto_atg_feedback_dismissed', 'mt_auto_atg_feedback_shown', 'mt_auto_atg_low_credits_dismissed_month', 'mt_auto_atg_low_credits_dismissed', 'mt_auto_atg_last_server_ping', 'mt_auto_atg_user_email', 'mt_auto_atg_is_pro', 'mt_auto_atg_debug_mode', 'mt_auto_atg_plugin_config');
DELETE FROM wp_options WHERE option_name LIKE '%_paid';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

