<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_me_contactform_api_key');
delete_site_option('ai_me_contactform_api_key');
delete_option('aimclists');
delete_site_option('aimclists');

