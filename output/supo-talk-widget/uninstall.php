<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stwwp_supo_talk_widget_option_name');
delete_site_option('stwwp_supo_talk_widget_option_name');

