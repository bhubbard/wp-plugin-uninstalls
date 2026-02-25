<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ntkrpnn_neuralnet_learningon');
delete_site_option('ntkrpnn_neuralnet_learningon');
delete_option('ntkrpnn_neuralnet_urlmusthave');
delete_site_option('ntkrpnn_neuralnet_urlmusthave');
delete_option('ntkrpnn_neuralnet_urlmustnot');
delete_site_option('ntkrpnn_neuralnet_urlmustnot');
delete_option('ntkrpnn_neuralnet_stripget');
delete_site_option('ntkrpnn_neuralnet_stripget');
delete_option('ntkrpnn_neuralnet_removeget');
delete_site_option('ntkrpnn_neuralnet_removeget');
delete_option('ntkrpnn_neuralnet_noadmin');
delete_site_option('ntkrpnn_neuralnet_noadmin');
delete_option('ntkrpnn_neuralnet_maximumweight');
delete_site_option('ntkrpnn_neuralnet_maximumweight');
delete_option('ntkrpnn_neuralnet_maximumscore');
delete_site_option('ntkrpnn_neuralnet_maximumscore');
delete_option('ntkrpnn_neuralnet_pro');
delete_site_option('ntkrpnn_neuralnet_pro');
delete_option('ntk_neuralnet_learningon');
delete_site_option('ntk_neuralnet_learningon');
delete_option('ntk_neuralnet_siteid');
delete_site_option('ntk_neuralnet_siteid');
delete_option('ntkrpnn_neuralnet_siteid');
delete_site_option('ntkrpnn_neuralnet_siteid');
delete_option('ntk_neuralnet_pro');
delete_site_option('ntk_neuralnet_pro');
delete_option('ntk_neuralnet_deleteold');
delete_site_option('ntk_neuralnet_deleteold');
delete_option('ntkrpnn_neuralnet_deleteold');
delete_site_option('ntkrpnn_neuralnet_deleteold');
delete_option('ntk_neuralnet_urlmusthave');
delete_site_option('ntk_neuralnet_urlmusthave');
delete_option('ntk_neuralnet_urlmustnot');
delete_site_option('ntk_neuralnet_urlmustnot');
delete_option('ntk_neuralnet_stripget');
delete_site_option('ntk_neuralnet_stripget');
delete_option('ntk_neuralnet_removeget');
delete_site_option('ntk_neuralnet_removeget');
delete_option('ntk_neuralnet_debug');
delete_site_option('ntk_neuralnet_debug');
delete_option('ntkrpnn_neuralnet_debug');
delete_site_option('ntkrpnn_neuralnet_debug');
delete_option('ntk_neuralnet_noadmin');
delete_site_option('ntk_neuralnet_noadmin');
delete_option('ntk_neuralnet_maximumweight');
delete_site_option('ntk_neuralnet_maximumweight');
delete_option('ntk_neuralnet_maximumscore');
delete_site_option('ntk_neuralnet_maximumscore');

// Clear Cron Jobs
wp_clear_scheduled_hook('ntkrpnn_neuralnet_cronjob');

