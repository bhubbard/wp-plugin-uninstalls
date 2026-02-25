<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woteu-press-nickname');
delete_site_option('woteu-press-nickname');
delete_option('woteu-press-acc_id');
delete_site_option('woteu-press-acc_id');

