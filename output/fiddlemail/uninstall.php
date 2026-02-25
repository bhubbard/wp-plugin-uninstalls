<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fm_filter');
delete_site_option('fm_filter');
delete_option('fm_comment_handling');
delete_site_option('fm_comment_handling');
delete_option('fm_api_key');
delete_site_option('fm_api_key');
delete_option('fm_api_send_mail');
delete_site_option('fm_api_send_mail');
delete_option('fm_api_block_score');
delete_site_option('fm_api_block_score');
delete_option('fm_use_spamhaus');
delete_site_option('fm_use_spamhaus');
delete_option('fm_use_uribl');
delete_site_option('fm_use_uribl');
delete_option('fm_whitelist');
delete_site_option('fm_whitelist');
delete_option('fm_blacklist');
delete_site_option('fm_blacklist');
delete_option('fm_api_key_score');
delete_site_option('fm_api_key_score');
delete_option('fm_db_version');
delete_site_option('fm_db_version');

