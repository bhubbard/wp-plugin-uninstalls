<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('istempmail_token');
delete_site_option('istempmail_token');
delete_option('istempmail_blocked_list');
delete_site_option('istempmail_blocked_list');
delete_option('istempmail_whitelist');
delete_site_option('istempmail_whitelist');
delete_option('istempmail_blacklist');
delete_site_option('istempmail_blacklist');
delete_option('istempmail_check');
delete_site_option('istempmail_check');
delete_option('istempmail_check_scope');
delete_site_option('istempmail_check_scope');
delete_option('istempmail_ignored_uris');
delete_site_option('istempmail_ignored_uris');
delete_option('istempmail_ignored_payload');
delete_site_option('istempmail_ignored_payload');

