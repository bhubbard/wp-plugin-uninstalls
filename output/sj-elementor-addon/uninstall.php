<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sjea_parent_page_url');
delete_site_option('sjea_parent_page_url');
delete_option('_sjea_mailer_services');
delete_site_option('_sjea_mailer_services');
delete_option('_sjea_mailer_campaigns');
delete_site_option('_sjea_mailer_campaigns');

