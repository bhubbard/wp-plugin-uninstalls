<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MySnazzyAPIKey');
delete_site_option('MySnazzyAPIKey');
delete_option('HideWelcomeMessage');
delete_site_option('HideWelcomeMessage');
delete_option('SnazzyMapStyles');
delete_site_option('SnazzyMapStyles');
delete_option('SnazzyMapDefaultStyle');
delete_site_option('SnazzyMapDefaultStyle');

