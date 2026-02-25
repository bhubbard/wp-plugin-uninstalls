<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maadne_martinsadnetwork_theme');
delete_site_option('maadne_martinsadnetwork_theme');
delete_option('maadne_martinsadnetwork_position');
delete_site_option('maadne_martinsadnetwork_position');
delete_option('maadne_martinsadnetwork_offset');
delete_site_option('maadne_martinsadnetwork_offset');
delete_option('maadne_martinsadnetwork_key');
delete_site_option('maadne_martinsadnetwork_key');

