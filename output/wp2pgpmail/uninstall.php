<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp2pgpmail_pgpkey_keyid');
delete_site_option('wp2pgpmail_pgpkey_keyid');
delete_option('wp2pgpmail_pgpkey_pkey');
delete_site_option('wp2pgpmail_pgpkey_pkey');
delete_option('wp2pgpmail_pgpkey_vers');
delete_site_option('wp2pgpmail_pgpkey_vers');
delete_option('wp2pgpmail_pgpkey_pktype');
delete_site_option('wp2pgpmail_pgpkey_pktype');
delete_option('wp2pgpmail_pgpkey');
delete_site_option('wp2pgpmail_pgpkey');
delete_option('wp2pgpmail_captcha_field');
delete_site_option('wp2pgpmail_captcha_field');
delete_option('wp2pgpmail_collect_ip');
delete_site_option('wp2pgpmail_collect_ip');
delete_option('wp2pgpmail_pgpkey_user');
delete_site_option('wp2pgpmail_pgpkey_user');

