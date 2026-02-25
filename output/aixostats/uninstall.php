<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aixostats_banned_ip');
delete_site_option('aixostats_banned_ip');
delete_option('aixostats_banned_ip_activer');
delete_site_option('aixostats_banned_ip_activer');
delete_option('aixostats_ban_admins_activer');
delete_site_option('aixostats_ban_admins_activer');
delete_option('aixostats_auto_tag_commentators');
delete_site_option('aixostats_auto_tag_commentators');
delete_option('aixostats_google_activer');
delete_site_option('aixostats_google_activer');
delete_option('aixostats_google_id');
delete_site_option('aixostats_google_id');
delete_option('aixostats_woopra_activer');
delete_site_option('aixostats_woopra_activer');
delete_option('aixostats_woopra_id');
delete_site_option('aixostats_woopra_id');
delete_option('aixostats_reinvigorate_activer');
delete_site_option('aixostats_reinvigorate_activer');
delete_option('aixostats_reinvigorate_id');
delete_site_option('aixostats_reinvigorate_id');
delete_option('aixostats_sitemeter_activer');
delete_site_option('aixostats_sitemeter_activer');
delete_option('aixostats_sitemeter_id1');
delete_site_option('aixostats_sitemeter_id1');
delete_option('aixostats_sitemeter_id2');
delete_site_option('aixostats_sitemeter_id2');
delete_option('aixostats_clicky_activer');
delete_site_option('aixostats_clicky_activer');
delete_option('aixostats_clicky_id');
delete_site_option('aixostats_clicky_id');

