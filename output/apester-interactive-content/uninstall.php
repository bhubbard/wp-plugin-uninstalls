<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apester-tokens-sent');
delete_site_option('apester-tokens-sent');
delete_option('tokens-publish-option-updated');
delete_site_option('tokens-publish-option-updated');
delete_option('qmerce-settings-admin');
delete_site_option('qmerce-settings-admin');
delete_option('qmerce-user-id');
delete_site_option('qmerce-user-id');

