<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajdg_nobot_protect');
delete_site_option('ajdg_nobot_protect');
delete_option('ajdg_nobot_questions');
delete_site_option('ajdg_nobot_questions');
delete_option('ajdg_nobot_answers');
delete_site_option('ajdg_nobot_answers');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');
delete_option('ajdg_nobot_blacklist_usernames');
delete_site_option('ajdg_nobot_blacklist_usernames');
delete_option('ajdg_nobot_blacklist_protect');
delete_site_option('ajdg_nobot_blacklist_protect');
delete_option('ajdg_nobot_blacklist_message');
delete_site_option('ajdg_nobot_blacklist_message');
delete_option('ajdg_nobot_security_message');
delete_site_option('ajdg_nobot_security_message');
delete_option('ajdg_nobot_hide_review');
delete_site_option('ajdg_nobot_hide_review');
delete_option('ajdg_activate_no-bot-registration');
delete_site_option('ajdg_activate_no-bot-registration');

// Delete Transients
delete_transient('ajdg_update_no-bot-registration');
delete_site_transient('ajdg_update_no-bot-registration');

