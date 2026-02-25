#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'transmail_plugin_version'
wp option delete 'transmail_max_log_limit'
wp option delete 'transmail_additional_mail_agents'
wp option delete 'transmail_test_mail_case'
wp option delete 'transmail_connection_status'
wp option delete 'transmail_content_type'
wp option delete 'transmail_domain_name'
wp option delete 'transmail_mail_agents_count'
wp option delete 'transmail_from_name'
wp option delete 'transmail_from_email_id'
wp option delete 'transmail_send_mail_token'
wp option delete 'zmail_plugin_installed'

