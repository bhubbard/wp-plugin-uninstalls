#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mail_logging_activated_time'
wp option delete 'wp_mail_logging_user_feedback_notice'
wp option delete 'wp_mail_logging_db_version'
wp option delete 'wpml_settings'
wp option delete 'wp_mail_smtp_source'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'

