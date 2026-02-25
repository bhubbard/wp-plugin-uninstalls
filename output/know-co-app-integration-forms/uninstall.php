<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('know__forms__element__input_styles');
delete_site_option('know__forms__element__input_styles');
delete_option('know__forms__element__input_classes');
delete_site_option('know__forms__element__input_classes');
delete_option('know__forms__element__textarea_styles');
delete_site_option('know__forms__element__textarea_styles');
delete_option('know__forms__element__textarea_classes');
delete_site_option('know__forms__element__textarea_classes');
delete_option('know__forms__element__select_styles');
delete_site_option('know__forms__element__select_styles');
delete_option('know__forms__element__select_classes');
delete_site_option('know__forms__element__select_classes');
delete_option('know__forms__element__button_styles');
delete_site_option('know__forms__element__button_styles');
delete_option('know__forms__element__button_classes');
delete_site_option('know__forms__element__button_classes');
delete_option('know--forms--settings-group');
delete_site_option('know--forms--settings-group');

