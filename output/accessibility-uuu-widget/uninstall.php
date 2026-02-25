<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uuuaccessibility_text_display');
delete_site_option('uuuaccessibility_text_display');

