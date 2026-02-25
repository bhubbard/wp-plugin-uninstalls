<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lwp_flip_cards_activation_time');
delete_site_option('lwp_flip_cards_activation_time');
delete_option('lwp_flip_cards_spare_me');
delete_site_option('lwp_flip_cards_spare_me');

