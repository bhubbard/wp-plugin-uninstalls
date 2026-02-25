<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crmaddon_actSetting_option');
delete_site_option('crmaddon_actSetting_option');
delete_option('crmaddon_pageShow_option');
delete_site_option('crmaddon_pageShow_option');
delete_option('crmaddon_link_option');
delete_site_option('crmaddon_link_option');

