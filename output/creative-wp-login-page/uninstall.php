<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwlp_version');
delete_site_option('cwlp_version');
delete_option('simple_style');
delete_site_option('simple_style');
delete_option('captcha_style');
delete_site_option('captcha_style');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_secret_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('recaptcha_v3_secret_key');
delete_site_option('recaptcha_v3_secret_key');
delete_option('cwlpeffecttype');
delete_site_option('cwlpeffecttype');
delete_option('stylecwlp');
delete_site_option('stylecwlp');
delete_option('cwlp-bshadow');
delete_site_option('cwlp-bshadow');
delete_option('cwlp-fontfamily');
delete_site_option('cwlp-fontfamily');
delete_option('cwlp-custom-logo');
delete_site_option('cwlp-custom-logo');
delete_option('cwlp-custom-ibc');
delete_site_option('cwlp-custom-ibc');
delete_option('cwlp-custom-ibu');
delete_site_option('cwlp-custom-ibu');
delete_option('cwlp-lswitch');
delete_site_option('cwlp-lswitch');
delete_option('cwlp-logo-url');
delete_site_option('cwlp-logo-url');
delete_option('cwlp-login-url-message');
delete_site_option('cwlp-login-url-message');
delete_option('cwlp-login-error-style');
delete_site_option('cwlp-login-error-style');
delete_option('cwlp-login-urls');
delete_site_option('cwlp-login-urls');
delete_option('cwlplabeluname');
delete_site_option('cwlplabeluname');
delete_option('cwlplabelpass');
delete_site_option('cwlplabelpass');
delete_option('cwlplabelremember');
delete_site_option('cwlplabelremember');
delete_option('cwlplabelpasslost');
delete_site_option('cwlplabelpasslost');
delete_option('cwlplabelogin');
delete_site_option('cwlplabelogin');
delete_option('cwlpllabelsolvethis');
delete_site_option('cwlpllabelsolvethis');
delete_option('cwlploginposition');
delete_site_option('cwlploginposition');
delete_option('cwlp-instagram');
delete_site_option('cwlp-instagram');
delete_option('cwlp-telegram');
delete_site_option('cwlp-telegram');
delete_option('cwlp-pinterest');
delete_site_option('cwlp-pinterest');
delete_option('cwlp-whatsapp');
delete_site_option('cwlp-whatsapp');
delete_option('cwlp-facebook');
delete_site_option('cwlp-facebook');
delete_option('cwlp-twitter');
delete_site_option('cwlp-twitter');
delete_option('cwlp-linkedin');
delete_site_option('cwlp-linkedin');
delete_option('cwlp-dmode');
delete_site_option('cwlp-dmode');
delete_option('optionsframework');
delete_site_option('optionsframework');

