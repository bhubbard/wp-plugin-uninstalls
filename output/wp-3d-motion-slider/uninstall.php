<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fwds_effect');
delete_site_option('fwds_effect');
delete_option('fwds_interval');
delete_site_option('fwds_interval');
delete_option('fwds_autoplay');
delete_site_option('fwds_autoplay');
delete_option('fwds_playBtn');
delete_site_option('fwds_playBtn');
delete_option('fwds_playbtn');
delete_site_option('fwds_playbtn');

