#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccc_cf7_lawmatics_ignore_spam_entry'
wp option delete 'cf7_db_version'
wp option delete 'wcc_cf7_lawmatics_notification_send_to'
wp option delete 'wcc_cf7_lawmatics_notification_subject'
wp option delete 'wcc_cf7_lawmatics_debug'
wp option delete 'wccc_cf7_lawmatics_notification_send_to	'
wp option delete 'wccc_cf7_lawmatics_notification_subject'
wp option delete 'wccc_cf7_lawmatics_debug'
wp option delete 'wccc_cf7_lawmatics_uninstall'
wp option delete 'wccc_cf7_lawmatics_db_version'

