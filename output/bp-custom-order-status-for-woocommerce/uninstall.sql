-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'wcbv_status_default', 'bp_custom_order_status_installed', 'dfwc_plugin_review', 'woocommerce_email_footer_text', 'cosmbp_new_version_installed_show_notice', 'bpcosm_review_later');
DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%';
DELETE FROM wp_options WHERE option_name LIKE 'rn_last_notification_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpi_check_ran_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('status_slug', 'wpml_language', '_email_type', 'icon_code', 'text_color', 'background_color', 'what_to_show', 'status_icon', '_recipient_cc', '_rn_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('status_slug', 'wpml_language', '_email_type', 'icon_code', 'text_color', 'background_color', 'what_to_show', 'status_icon', '_recipient_cc', '_rn_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('status_slug', 'wpml_language', '_email_type', 'icon_code', 'text_color', 'background_color', 'what_to_show', 'status_icon', '_recipient_cc', '_rn_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('status_slug', 'wpml_language', '_email_type', 'icon_code', 'text_color', 'background_color', 'what_to_show', 'status_icon', '_recipient_cc', '_rn_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

