<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cc_tabby_default_styles');
delete_site_option('cc_tabby_default_styles');
delete_option('cc_tabby_tab_title_element');
delete_site_option('cc_tabby_tab_title_element');
delete_option('cc_tabby_fa_icon_style');
delete_site_option('cc_tabby_fa_icon_style');

