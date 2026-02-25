<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gothamadblock_option_premium_tools');
delete_site_option('gothamadblock_option_premium_tools');
delete_option('gothamadblock_option_fury');
delete_site_option('gothamadblock_option_fury');
delete_option('gothamadblock_option_messageperso_title');
delete_site_option('gothamadblock_option_messageperso_title');
delete_option('gothamadblock_option_messageperso');
delete_site_option('gothamadblock_option_messageperso');
delete_option('gothamadblock_option_messageperso_button');
delete_site_option('gothamadblock_option_messageperso_button');
delete_option('gothamadblock_option_cookietime');
delete_site_option('gothamadblock_option_cookietime');
delete_option('gothamadblock_option_powered');
delete_site_option('gothamadblock_option_powered');
delete_option('gothamadblock_option_apijeton');
delete_site_option('gothamadblock_option_apijeton');

