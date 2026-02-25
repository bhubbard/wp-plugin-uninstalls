<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yandex_mail');
delete_site_option('yandex_mail');
delete_option('yandex-mail');
delete_site_option('yandex-mail');

