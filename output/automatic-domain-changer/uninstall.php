<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_domain_change-https');
delete_site_option('auto_domain_change-https');
delete_option('auto_domain_change-www');
delete_site_option('auto_domain_change-www');
delete_option('auto_domain_change-domain');
delete_site_option('auto_domain_change-domain');
delete_option('auto_domain_change-dismiss');
delete_site_option('auto_domain_change-dismiss');

