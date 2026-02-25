<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustist_payments_sandbox_public_key');
delete_site_option('trustist_payments_sandbox_public_key');
delete_option('trustist_payments_sandbox_private_key');
delete_site_option('trustist_payments_sandbox_private_key');
delete_option('trustist_payments_public_key');
delete_site_option('trustist_payments_public_key');
delete_option('trustist_payments_private_key');
delete_site_option('trustist_payments_private_key');
delete_option('trustist_payments_sandbox_cards_enabled');
delete_site_option('trustist_payments_sandbox_cards_enabled');
delete_option('trustist_payments_cards_enabled');
delete_site_option('trustist_payments_cards_enabled');

