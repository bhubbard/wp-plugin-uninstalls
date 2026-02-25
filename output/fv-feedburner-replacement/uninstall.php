<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fv_feedburner_replacement');
delete_site_option('fv_feedburner_replacement');
delete_option('fv_feedburner_replacement_deferred_notices');
delete_site_option('fv_feedburner_replacement_deferred_notices');
delete_option('fv_feedburner_replacement_deferred_errors');
delete_site_option('fv_feedburner_replacement_deferred_errors');
delete_option('fv_feedburner_replacement_ad_disable');
delete_site_option('fv_feedburner_replacement_ad_disable');

