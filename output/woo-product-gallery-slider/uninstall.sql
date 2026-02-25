-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'wpgs_form', 'woocommerce_placeholder_image', 'ciwpgs_installed', 'wcpg_plugin_review', 'dfwc-banner', 'wpgs-review-later');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%';
DELETE FROM wp_options WHERE option_name LIKE 'cdx-wpgs-plugin-info-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpgs_product_variation_%';
DELETE FROM wp_options WHERE option_name LIKE 'rn_last_notification_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpi_check_ran_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wavi_value', 'twist_video_url', '_wp_attachment_image_alt', '_rn_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wavi_value', 'twist_video_url', '_wp_attachment_image_alt', '_rn_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wavi_value', 'twist_video_url', '_wp_attachment_image_alt', '_rn_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wavi_value', 'twist_video_url', '_wp_attachment_image_alt', '_rn_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

