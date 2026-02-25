<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imitate_email_username');
delete_site_option('imitate_email_username');
delete_option('imitate_email_password');
delete_site_option('imitate_email_password');

