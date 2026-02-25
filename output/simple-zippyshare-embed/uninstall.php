<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zippydownbutt');
delete_site_option('zippydownbutt');
delete_option('zippyvol');
delete_site_option('zippyvol');
delete_option('zippyauto');
delete_site_option('zippyauto');
delete_option('zippywidth');
delete_site_option('zippywidth');
delete_option('zippytext');
delete_site_option('zippytext');
delete_option('zippyback');
delete_site_option('zippyback');
delete_option('zippyplay');
delete_site_option('zippyplay');
delete_option('zippywave');
delete_site_option('zippywave');
delete_option('zippyborder');
delete_site_option('zippyborder');

