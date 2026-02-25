<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jn_cf7_ADW_labels');
delete_site_option('jn_cf7_ADW_labels');
delete_option('jn_GADW_CF7_enable');
delete_site_option('jn_GADW_CF7_enable');
delete_option('jnAnalyticsCF7Settings-group');
delete_site_option('jnAnalyticsCF7Settings-group');

