<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ame_imgset');
delete_site_option('ame_imgset');
delete_option('ame_show_orderoptions');
delete_site_option('ame_show_orderoptions');
delete_option('ame_toggle_showinvisposts');
delete_site_option('ame_toggle_showinvisposts');
delete_option('ame_version');
delete_site_option('ame_version');

