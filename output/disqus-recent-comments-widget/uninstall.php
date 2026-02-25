<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disqus_rcw_api_key');
delete_site_option('disqus_rcw_api_key');
delete_option('disqus_rcw_forum_name');
delete_site_option('disqus_rcw_forum_name');
delete_option('disqus_rcw_date_format');
delete_site_option('disqus_rcw_date_format');
delete_option('disqus_rcw_title_wrapper');
delete_site_option('disqus_rcw_title_wrapper');
delete_option('disqus_rcw_which_markup');
delete_site_option('disqus_rcw_which_markup');
delete_option('disqus_rcw_disable_caching');
delete_site_option('disqus_rcw_disable_caching');
delete_option('disqus_rcw_dont_use_css');
delete_site_option('disqus_rcw_dont_use_css');
delete_option('disqus_rcw_settings_do_activation_redirect');
delete_site_option('disqus_rcw_settings_do_activation_redirect');

// Delete Transients
delete_transient('disqus_rcw_cache');
delete_site_transient('disqus_rcw_cache');

