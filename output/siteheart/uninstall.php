<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sh_widget_id');
delete_site_option('sh_widget_id');
delete_option('sh_template');
delete_site_option('sh_template');
delete_option('sh_side');
delete_site_option('sh_side');
delete_option('sh_position');
delete_site_option('sh_position');
delete_option('sh_title');
delete_site_option('sh_title');
delete_option('sh_title_offline');
delete_site_option('sh_title_offline');
delete_option('sh_inviteTimeout');
delete_site_option('sh_inviteTimeout');
delete_option('sh_inviteCancelTimeout');
delete_site_option('sh_inviteCancelTimeout');
delete_option('sh_inviteText');
delete_site_option('sh_inviteText');
delete_option('sh_inviteImage');
delete_site_option('sh_inviteImage');
delete_option('sh_text_layout');
delete_site_option('sh_text_layout');
delete_option('sh_devisions');
delete_site_option('sh_devisions');
delete_option('sh_track');
delete_site_option('sh_track');
delete_option('sh_hide');
delete_site_option('sh_hide');
delete_option('sh_hide_offline');
delete_site_option('sh_hide_offline');
delete_option('sh_offline_pay');
delete_site_option('sh_offline_pay');
delete_option('sh_secret_key');
delete_site_option('sh_secret_key');

