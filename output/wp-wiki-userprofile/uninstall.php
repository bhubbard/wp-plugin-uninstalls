<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codecocktail_wiki_username');
delete_site_option('codecocktail_wiki_username');
delete_option('codecocktail_wiki_user_param');
delete_site_option('codecocktail_wiki_user_param');

