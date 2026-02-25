<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etgwtlt_pluginurl');
delete_site_option('etgwtlt_pluginurl');
delete_option('etgwtlt_xmllocation');
delete_site_option('etgwtlt_xmllocation');
delete_option('etgwtlt_pause');
delete_site_option('etgwtlt_pause');
delete_option('etgwtlt_transduration');
delete_site_option('etgwtlt_transduration');
delete_option('etgwtlt_title');
delete_site_option('etgwtlt_title');

