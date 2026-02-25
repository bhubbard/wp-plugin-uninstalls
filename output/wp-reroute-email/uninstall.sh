#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_reroute_email_enable'
wp option delete 'wp_reroute_append_recipient'
wp option delete 'wp_reroute_email_address'
wp option delete 'wp_reroute_email_message_to_append'
wp option delete 'wp_reroute_email_enable_db_log'
wp option delete 'wp_reroute_email_db_log_option'
wp option delete 'wp_reroute_email_ignored_subjects'
wp option delete 'wpremail_db_version'

