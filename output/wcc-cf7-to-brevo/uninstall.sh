#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccc_cf7_brevo_ignore_spam_entry'
wp option delete 'cf7_db_version'
wp option delete 'wcc_cf7_brevo_notification_send_to'
wp option delete 'wcc_cf7_brevo_notification_subject'
wp option delete 'wccc_cf7_brevo_debug'
wp option delete 'wccc_cf7_brevo_notification_send_to	'
wp option delete 'wccc_cf7_brevo_notification_subject'
wp option delete 'wccc_cf7_brevo_uninstall'
wp option delete 'wccc_cf7_brevo_db_version'

