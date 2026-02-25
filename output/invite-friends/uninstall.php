<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('if_activate_redirect');
delete_site_option('if_activate_redirect');
delete_option('if_invitation_cards');
delete_site_option('if_invitation_cards');

