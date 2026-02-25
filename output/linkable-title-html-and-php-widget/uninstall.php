<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LinkableTitleHtmlAndPhpWidget_disableUpdateNag');
delete_site_option('LinkableTitleHtmlAndPhpWidget_disableUpdateNag');

