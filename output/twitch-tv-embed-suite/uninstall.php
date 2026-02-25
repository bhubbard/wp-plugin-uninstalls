<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pte_streamwidth');
delete_site_option('pte_streamwidth');
delete_option('pte_streamheight');
delete_site_option('pte_streamheight');
delete_option('pte_chatwidth');
delete_site_option('pte_chatwidth');
delete_option('pte_chatheight');
delete_site_option('pte_chatheight');
delete_option('pte_autoplay');
delete_site_option('pte_autoplay');
delete_option('pte_startvolume');
delete_site_option('pte_startvolume');
delete_option('pte_allowfullscreen');
delete_site_option('pte_allowfullscreen');
delete_option('pte_allowscriptaccess');
delete_site_option('pte_allowscriptaccess');
delete_option('pte_bgcolor');
delete_site_option('pte_bgcolor');
delete_option('pte_wmode');
delete_site_option('pte_wmode');
delete_option('pte_showchat');
delete_site_option('pte_showchat');

