<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toemail');
delete_site_option('toemail');
delete_option('fromemail');
delete_site_option('fromemail');
delete_option('requirename');
delete_site_option('requirename');
delete_option('used_name');
delete_site_option('used_name');
delete_option('name_minlength');
delete_site_option('name_minlength');
delete_option('name_maxlength');
delete_site_option('name_maxlength');
delete_option('require_email');
delete_site_option('require_email');
delete_option('used_email');
delete_site_option('used_email');
delete_option('used_captcha');
delete_site_option('used_captcha');
delete_option('require_subject');
delete_site_option('require_subject');
delete_option('used_subject');
delete_site_option('used_subject');
delete_option('subject_minlength');
delete_site_option('subject_minlength');
delete_option('subject_maxlength');
delete_site_option('subject_maxlength');
delete_option('email_subject');
delete_site_option('email_subject');
delete_option('content_minlength');
delete_site_option('content_minlength');
delete_option('content_maxlength');
delete_site_option('content_maxlength');
delete_option('ip_address');
delete_site_option('ip_address');
delete_option('user_referer');
delete_site_option('user_referer');
delete_option('user_browser');
delete_site_option('user_browser');
delete_option('used_url');
delete_site_option('used_url');
delete_option('require_url');
delete_site_option('require_url');
delete_option('url_minlength');
delete_site_option('url_minlength');
delete_option('url_maxlength');
delete_site_option('url_maxlength');
delete_option('used_phone');
delete_site_option('used_phone');
delete_option('require_phone');
delete_site_option('require_phone');
delete_option('phone_minlength');
delete_site_option('phone_minlength');
delete_option('phone_maxlength');
delete_site_option('phone_maxlength');
delete_option('required_symbol');
delete_site_option('required_symbol');
delete_option('send_copy');
delete_site_option('send_copy');

