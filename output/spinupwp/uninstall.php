<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spinupwp_mail_notice_dismissed');
delete_site_option('spinupwp_mail_notice_dismissed');
delete_option('spinupwp_redis_cache_disabled');
delete_site_option('spinupwp_redis_cache_disabled');
delete_option('spinupwp_redis_cache_disabled_notice_dismissed');
delete_site_option('spinupwp_redis_cache_disabled_notice_dismissed');

