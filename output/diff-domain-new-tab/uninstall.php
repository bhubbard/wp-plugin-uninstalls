<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('diffDomainNewTab-active');
delete_site_option('diffDomainNewTab-active');
delete_option('diffDomainNewTab-exception');
delete_site_option('diffDomainNewTab-exception');

