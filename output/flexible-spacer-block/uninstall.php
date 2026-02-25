<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flexible_spacer_block_breakpoint');
delete_site_option('flexible_spacer_block_breakpoint');
delete_option('flexible_spacer_block_default_value');
delete_site_option('flexible_spacer_block_default_value');
delete_option('flexible_spacer_block_show_block');
delete_site_option('flexible_spacer_block_show_block');

