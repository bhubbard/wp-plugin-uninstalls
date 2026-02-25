<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kavenegarapikey');
delete_site_option('kavenegarapikey');
delete_option('kavenegartemplate');
delete_site_option('kavenegartemplate');

