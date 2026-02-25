<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Very_Fresh_Lexicon_css');
delete_site_option('Very_Fresh_Lexicon_css');
delete_option('Very_Fresh_Lexicon_url');
delete_site_option('Very_Fresh_Lexicon_url');
delete_option('fl-podcaster-custom-style');
delete_site_option('fl-podcaster-custom-style');
delete_option('fl-podcaster-custom-url');
delete_site_option('fl-podcaster-custom-url');

