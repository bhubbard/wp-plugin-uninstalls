<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vbean_errormailer_useslack');
delete_site_option('vbean_errormailer_useslack');
delete_option('vbean_slack_hooker_setupvalid');
delete_site_option('vbean_slack_hooker_setupvalid');
delete_option('vbean_errormailer_fatals');
delete_site_option('vbean_errormailer_fatals');
delete_option('vbean_errormailer_warnings');
delete_site_option('vbean_errormailer_warnings');
delete_option('vbean_errormailer_notices');
delete_site_option('vbean_errormailer_notices');
delete_option('vbean_errormailer_parse');
delete_site_option('vbean_errormailer_parse');
delete_option('vbean_errormailer_db_version');
delete_site_option('vbean_errormailer_db_version');
delete_option('vbean_errormailer_lasterror');
delete_site_option('vbean_errormailer_lasterror');
delete_option('vbean_errormailer_lasterrorcount');
delete_site_option('vbean_errormailer_lasterrorcount');
delete_option('vbean_errormailer_lasterrortime');
delete_site_option('vbean_errormailer_lasterrortime');
delete_option('vbean_errormailer_lasterrorstart');
delete_site_option('vbean_errormailer_lasterrorstart');
delete_option('vbean_errormailer_subject');
delete_site_option('vbean_errormailer_subject');
delete_option('vbean_errormailer_exemptions');
delete_site_option('vbean_errormailer_exemptions');
delete_option('vbean_errormailer_excludetypes');
delete_site_option('vbean_errormailer_excludetypes');
delete_option('vbean_errormailer_recipients');
delete_site_option('vbean_errormailer_recipients');
delete_option('vbean_errormailer_slackicon');
delete_site_option('vbean_errormailer_slackicon');
delete_option('vbean_errormailer_slackchannel');
delete_site_option('vbean_errormailer_slackchannel');
delete_option('vbean_errormailer_slackfrom');
delete_site_option('vbean_errormailer_slackfrom');

