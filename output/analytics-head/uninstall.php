<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wordpress_ln_gah_ad');
delete_site_option('wordpress_ln_gah_ad');
delete_option('wordpress_ln_gah_id');
delete_site_option('wordpress_ln_gah_id');
delete_option('wordpress_ln_p_ah_ga_id');
delete_site_option('wordpress_ln_p_ah_ga_id');
delete_option('wordpress_ln_p_ah_add_for_admins');
delete_site_option('wordpress_ln_p_ah_add_for_admins');
delete_option('wordpress_ln_p_ah');
delete_site_option('wordpress_ln_p_ah');
delete_option('wordpress_lnpo_ah');
delete_site_option('wordpress_lnpo_ah');
delete_option('rmnd_phylax_analytics_head');
delete_site_option('rmnd_phylax_analytics_head');

