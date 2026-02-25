<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('css_share_where');
delete_site_option('css_share_where');
delete_option('css_share_style');
delete_site_option('css_share_style');

