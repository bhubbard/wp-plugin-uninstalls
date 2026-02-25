<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ntrpp-open-comment-links-in-new-window');
delete_site_option('ntrpp-open-comment-links-in-new-window');
delete_option('ntrpp-othar-comment-links-in-new-window');
delete_site_option('ntrpp-othar-comment-links-in-new-window');
delete_option('ntrpp-website-full-url');
delete_site_option('ntrpp-website-full-url');

