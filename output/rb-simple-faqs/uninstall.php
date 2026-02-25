<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rbd-faq-question-color');
delete_site_option('rbd-faq-question-color');
delete_option('rbd-faq-question-bg');
delete_site_option('rbd-faq-question-bg');
delete_option('rbd-faq-category-color');
delete_site_option('rbd-faq-category-color');
delete_option('rbd-faq-category-bg');
delete_site_option('rbd-faq-category-bg');
delete_option('rbd-faq-answer-color');
delete_site_option('rbd-faq-answer-color');
delete_option('rbd-faq-answer-bg');
delete_site_option('rbd-faq-answer-bg');
delete_option('rbd-faq-icon-color');
delete_site_option('rbd-faq-icon-color');

