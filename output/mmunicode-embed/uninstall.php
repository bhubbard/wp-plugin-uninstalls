<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uniemd_converter');
delete_site_option('uniemd_converter');
delete_option('uniembed_font');
delete_site_option('uniembed_font');
delete_option('uniemd_forceCSS');
delete_site_option('uniemd_forceCSS');
delete_option('uniemd_embed');
delete_site_option('uniemd_embed');
delete_option('uniemd_init');
delete_site_option('uniemd_init');
delete_option('uniemd_jquery');
delete_site_option('uniemd_jquery');

