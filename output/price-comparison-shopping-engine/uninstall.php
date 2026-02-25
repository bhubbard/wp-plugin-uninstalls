<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goodspack_fields');
delete_site_option('goodspack_fields');
delete_option('goodspack_block');
delete_site_option('goodspack_block');

