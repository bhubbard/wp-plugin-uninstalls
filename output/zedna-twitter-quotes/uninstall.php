<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zednatq_username');
delete_site_option('zednatq_username');
delete_option('zednatq_share_text');
delete_site_option('zednatq_share_text');
delete_option('zednatq_class');
delete_site_option('zednatq_class');
delete_option('zednatq_utm_campaign');
delete_site_option('zednatq_utm_campaign');
delete_option('zednatq_utm_medium');
delete_site_option('zednatq_utm_medium');
delete_option('zednatq_utm_source');
delete_site_option('zednatq_utm_source');
delete_option('zednatq-short-url');
delete_site_option('zednatq-short-url');

