-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reatlat_cub_version');
DELETE FROM wp_options WHERE option_name LIKE '%_keep_linkquery';
DELETE FROM wp_options WHERE option_name LIKE '%_keep_linkanchor';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_api';
DELETE FROM wp_options WHERE option_name LIKE '%_bitly_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_rebrandly_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_domain';
DELETE FROM wp_options WHERE option_name LIKE '%_enforce_link_sanitize';
DELETE FROM wp_options WHERE option_name LIKE '%_show_useronly';
DELETE FROM wp_options WHERE option_name LIKE '%_keep_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_only';
DELETE FROM wp_options WHERE option_name LIKE '%_show_creator';
DELETE FROM wp_options WHERE option_name LIKE '%_metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_activator';
DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_anonymous';
DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_styles';
DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_recaptcha';
DELETE FROM wp_options WHERE option_name LIKE '%_recaptcha_site_key';
DELETE FROM wp_options WHERE option_name LIKE '%_recaptcha_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

