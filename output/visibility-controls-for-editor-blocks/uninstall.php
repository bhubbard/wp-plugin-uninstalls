<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gbvc_mobile_breakpoint');
delete_site_option('gbvc_mobile_breakpoint');
delete_option('gbvc_tablet_breakpoint');
delete_site_option('gbvc_tablet_breakpoint');
delete_option('gbvc_disable_styles_on_non_gutenberg_pages');
delete_site_option('gbvc_disable_styles_on_non_gutenberg_pages');

