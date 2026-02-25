<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woob_woo_block_emails_settings');
delete_site_option('woob_woo_block_emails_settings');
delete_option('woob_woo_block_emails_counter');
delete_site_option('woob_woo_block_emails_counter');

