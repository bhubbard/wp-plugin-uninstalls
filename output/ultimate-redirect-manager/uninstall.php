<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_ultimate_404_page_id');
delete_site_option('custom_ultimate_404_page_id');
delete_option('ultimate_404_redirect_rules');
delete_site_option('ultimate_404_redirect_rules');

