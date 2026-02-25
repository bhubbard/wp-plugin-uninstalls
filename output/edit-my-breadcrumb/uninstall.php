<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emb_divider');
delete_site_option('emb_divider');
delete_option('emb_class');
delete_site_option('emb_class');
delete_option('emb_customfield');
delete_site_option('emb_customfield');
delete_option('emb_input');
delete_site_option('emb_input');
delete_option('emb_home');
delete_site_option('emb_home');
delete_option('emb_frontpage');
delete_site_option('emb_frontpage');

