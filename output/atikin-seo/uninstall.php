<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atikin_seo_title');
delete_site_option('atikin_seo_title');
delete_option('atikin_seo_description');
delete_site_option('atikin_seo_description');

