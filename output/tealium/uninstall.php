<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tealiumDataStyle');
delete_site_option('tealiumDataStyle');
delete_option('tealiumExcludeMetaData');
delete_site_option('tealiumExcludeMetaData');
delete_option('tealiumAccount');
delete_site_option('tealiumAccount');
delete_option('tealiumProfile');
delete_site_option('tealiumProfile');
delete_option('tealiumEnvironment');
delete_site_option('tealiumEnvironment');
delete_option('tealiumExclusions');
delete_site_option('tealiumExclusions');
delete_option('tealiumUtagSync');
delete_site_option('tealiumUtagSync');
delete_option('tealiumCacheBuster');
delete_site_option('tealiumCacheBuster');
delete_option('tealiumDNSPrefetch');
delete_site_option('tealiumDNSPrefetch');
delete_option('tealiumEUOnly');
delete_site_option('tealiumEUOnly');
delete_option('tealiumNamespace');
delete_site_option('tealiumNamespace');
delete_option('tealiumTagCode');
delete_site_option('tealiumTagCode');
delete_option('tealiumTag');
delete_site_option('tealiumTag');
delete_option('tealiumTagLocation');
delete_site_option('tealiumTagLocation');
delete_option('tealiumTagType');
delete_site_option('tealiumTagType');

