<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mk_adblock_title');
delete_site_option('mk_adblock_title');
delete_option('mk_adblock_description');
delete_site_option('mk_adblock_description');
delete_option('mk_adblock_elements');
delete_site_option('mk_adblock_elements');
delete_option('mk_adblock_hide_video');
delete_site_option('mk_adblock_hide_video');
delete_option('mk_adblock_required');
delete_site_option('mk_adblock_required');

