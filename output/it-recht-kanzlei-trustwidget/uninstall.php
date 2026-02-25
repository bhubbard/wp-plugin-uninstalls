<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('it_recht_kanzlei_trustwidget_identifier');
delete_site_option('it_recht_kanzlei_trustwidget_identifier');
delete_option('it_recht_kanzlei_widget_identifier');
delete_site_option('it_recht_kanzlei_widget_identifier');

