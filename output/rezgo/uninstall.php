<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rezgo_cid');
delete_site_option('rezgo_cid');
delete_option('rezgo_api_key');
delete_site_option('rezgo_api_key');
delete_option('rezgo_captcha_pub_key');
delete_site_option('rezgo_captcha_pub_key');
delete_option('rezgo_captcha_priv_key');
delete_site_option('rezgo_captcha_priv_key');
delete_option('rezgo_google_key');
delete_site_option('rezgo_google_key');
delete_option('rezgo_template');
delete_site_option('rezgo_template');
delete_option('rezgo_custom_template_use');
delete_site_option('rezgo_custom_template_use');
delete_option('rezgo_legacy_template_use');
delete_site_option('rezgo_legacy_template_use');
delete_option('rezgo_alt_doc_root');
delete_site_option('rezgo_alt_doc_root');
delete_option('rezgo_result_num');
delete_site_option('rezgo_result_num');
delete_option('rezgo_forward_secure');
delete_site_option('rezgo_forward_secure');
delete_option('rezgo_secure_url');
delete_site_option('rezgo_secure_url');
delete_option('rezgo_debug');
delete_site_option('rezgo_debug');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('rezgo_optout_overwrite_page_title');
delete_site_option('rezgo_optout_overwrite_page_title');
delete_option('rezgo_version');
delete_site_option('rezgo_version');
delete_option('rezgo_all_secure');
delete_site_option('rezgo_all_secure');
delete_option('rezgo_override_doc_root');
delete_site_option('rezgo_override_doc_root');

