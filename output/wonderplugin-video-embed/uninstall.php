<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wonderplugin_videoembed_keepdata');
delete_site_option('wonderplugin_videoembed_keepdata');
delete_option('wonderplugin_videoembed_disableupdate');
delete_site_option('wonderplugin_videoembed_disableupdate');
delete_option('wonderplugin_videoembed_addjstofooter');
delete_site_option('wonderplugin_videoembed_addjstofooter');
delete_option('wonderplugin_videoembed_zindex');
delete_site_option('wonderplugin_videoembed_zindex');
delete_option('wonderplugin_videoembed_information');
delete_site_option('wonderplugin_videoembed_information');

