<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wu_block_comments_options');
delete_site_option('wu_block_comments_options');
delete_option('wu_block_comments_wordlist');
delete_site_option('wu_block_comments_wordlist');
delete_option('wubc_check_wordlist');
delete_site_option('wubc_check_wordlist');

