<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('commentformwp_plugin_do_activate');
delete_site_option('commentformwp_plugin_do_activate');
delete_option('commentformwp-nameoption');
delete_site_option('commentformwp-nameoption');
delete_option('commentformwp-emailoption');
delete_site_option('commentformwp-emailoption');
delete_option('commentformwp-websiteoption');
delete_site_option('commentformwp-websiteoption');
delete_option('commentformwp-commentbottom');
delete_site_option('commentformwp-commentbottom');
delete_option('commentformwp-cookie-hideshow');
delete_site_option('commentformwp-cookie-hideshow');
delete_option('commentformwp-cookies');
delete_site_option('commentformwp-cookies');
delete_option('commentformwp-cookiesbottom');
delete_site_option('commentformwp-cookiesbottom');
delete_option('commentformwp-submitbtn-right');
delete_site_option('commentformwp-submitbtn-right');
delete_option('commentformwp-title');
delete_site_option('commentformwp-title');
delete_option('commentformwp-note');
delete_site_option('commentformwp-note');
delete_option('commentformwp-reply');
delete_site_option('commentformwp-reply');
delete_option('commentformwp-cancel-reply');
delete_site_option('commentformwp-cancel-reply');
delete_option('commentformwp-submitbtn');
delete_site_option('commentformwp-submitbtn');
delete_option('commentformwp-labelyes');
delete_site_option('commentformwp-labelyes');
delete_option('commentformwp-author');
delete_site_option('commentformwp-author');
delete_option('commentformwp-email');
delete_site_option('commentformwp-email');
delete_option('commentformwp-url');
delete_site_option('commentformwp-url');
delete_option('commentformwp-textarea');
delete_site_option('commentformwp-textarea');
delete_option('commentformwp-labelrequired-yes');
delete_site_option('commentformwp-labelrequired-yes');
delete_option('commentformwp-author-plc');
delete_site_option('commentformwp-author-plc');
delete_option('commentformwp-email-plc');
delete_site_option('commentformwp-email-plc');
delete_option('commentformwp-url-plc');
delete_site_option('commentformwp-url-plc');
delete_option('commentformwp-textarea-plc');
delete_site_option('commentformwp-textarea-plc');
delete_option('commentformwp-placerequired-yes');
delete_site_option('commentformwp-placerequired-yes');

