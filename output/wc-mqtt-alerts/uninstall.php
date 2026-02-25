<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooshiftrmqtt_shiftr_url');
delete_site_option('wooshiftrmqtt_shiftr_url');
delete_option('wooshiftrmqtt_shiftr_username');
delete_site_option('wooshiftrmqtt_shiftr_username');
delete_option('wooshiftrmqtt_shiftr_password');
delete_site_option('wooshiftrmqtt_shiftr_password');
delete_option('wooshiftrmqtt_shiftr_topic_prefix');
delete_site_option('wooshiftrmqtt_shiftr_topic_prefix');
delete_option('wooshiftrmqtt_shiftr_retain');
delete_site_option('wooshiftrmqtt_shiftr_retain');
delete_option('wooshiftrmqtt_shiftr_qos');
delete_site_option('wooshiftrmqtt_shiftr_qos');
delete_option('wooshiftrmqtt_options');
delete_site_option('wooshiftrmqtt_options');

