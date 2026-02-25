<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('skb_cife_activation_redirect');
delete_site_transient('skb_cife_activation_redirect');

