<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tabIndex');
delete_site_option('tabIndex');
delete_option('yalstReiterIntegrationInput');
delete_site_option('yalstReiterIntegrationInput');
delete_option('yalstReiterWidgetIntegrationInput');
delete_site_option('yalstReiterWidgetIntegrationInput');
delete_option('yalstTabChatIntegrationInput');
delete_site_option('yalstTabChatIntegrationInput');
delete_option('isAddedReiter');
delete_site_option('isAddedReiter');
delete_option('isAddedReiterWidget');
delete_site_option('isAddedReiterWidget');
delete_option('isAddedTab');
delete_site_option('isAddedTab');

