<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kunato_identification');
delete_site_option('kunato_identification');
delete_option('kunato_currency');
delete_site_option('kunato_currency');
delete_option('kunato_disable_title_modify');
delete_site_option('kunato_disable_title_modify');

