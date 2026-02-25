<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('noadblock-title');
delete_site_option('noadblock-title');
delete_option('noadblock-description');
delete_site_option('noadblock-description');
delete_option('noadblock-status');
delete_site_option('noadblock-status');
delete_option('noadblock-agree');
delete_site_option('noadblock-agree');
delete_option('noadblock-disagree');
delete_site_option('noadblock-disagree');
delete_option('noadblock-url');
delete_site_option('noadblock-url');

