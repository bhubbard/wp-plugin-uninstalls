<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affiliate_booster_btnbgcolor');
delete_site_option('affiliate_booster_btnbgcolor');
delete_option('affiliate_booster_btnbghovercolor');
delete_site_option('affiliate_booster_btnbghovercolor');
delete_option('affiliate_booster_btnbordercolor');
delete_site_option('affiliate_booster_btnbordercolor');
delete_option('affiliate_booster_btnborderhovercolor');
delete_site_option('affiliate_booster_btnborderhovercolor');
delete_option('affiliate_booster_btnbordertype');
delete_site_option('affiliate_booster_btnbordertype');
delete_option('affiliate_booster_btntextcolor');
delete_site_option('affiliate_booster_btntextcolor');
delete_option('affiliate_booster_btntexthovercolor');
delete_site_option('affiliate_booster_btntexthovercolor');
delete_option('affiliate_booster_prosiconcolor');
delete_site_option('affiliate_booster_prosiconcolor');
delete_option('affiliate_booster_consiconcolor');
delete_site_option('affiliate_booster_consiconcolor');
delete_option('affiliate_booster_iconlisticoncolor');
delete_site_option('affiliate_booster_iconlisticoncolor');
delete_option('affiliate_booster_boxbordercolor');
delete_site_option('affiliate_booster_boxbordercolor');
delete_option('affiliate_booster_gutenberg_do_activation_redirect');
delete_site_option('affiliate_booster_gutenberg_do_activation_redirect');
delete_option('dgb_disabled_blocks');
delete_site_option('dgb_disabled_blocks');
delete_option('widget_block');
delete_site_option('widget_block');

