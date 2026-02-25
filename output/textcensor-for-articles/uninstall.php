<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TextCensorForArticles');
delete_site_option('TextCensorForArticles');

// Delete Transients
delete_transient('luffy_tcfa_status');
delete_site_transient('luffy_tcfa_status');

