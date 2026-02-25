<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livestreamchurch_page_live_id');
delete_site_option('livestreamchurch_page_live_id');
delete_option('livestreamchurch-channelid');
delete_site_option('livestreamchurch-channelid');
delete_option('livestreamchurch-offlinevideo');
delete_site_option('livestreamchurch-offlinevideo');
delete_option('livestreamchurch-logoimage');
delete_site_option('livestreamchurch-logoimage');
delete_option('livestreamchurch-logoimageprofile');
delete_site_option('livestreamchurch-logoimageprofile');
delete_option('livestreamchurch-videotitle');
delete_site_option('livestreamchurch-videotitle');
delete_option('livestreamchurch-descriptiontext');
delete_site_option('livestreamchurch-descriptiontext');
delete_option('livestreamchurch-offeringlink');
delete_site_option('livestreamchurch-offeringlink');

