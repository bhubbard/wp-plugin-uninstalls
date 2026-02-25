<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('QQ_Avtar');
delete_site_option('QQ_Avtar');
delete_option('QQ_Avatar');
delete_site_option('QQ_Avatar');

