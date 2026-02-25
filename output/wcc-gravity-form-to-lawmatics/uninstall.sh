#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcc_gravity_form_lawmatics_ignore_spam_entry'
wp option delete 'gf_db_version'
wp option delete 'wcc_gf_lawmatics_notification_send_to'
wp option delete 'wcc_gf_lawmatics_notification_subject'
wp option delete 'wcc_gf_lawmatics_debug'
wp option delete 'wcc_gravity_form_lawmatics_notification_send_to	'
wp option delete 'wcc_gravity_form_lawmatics_notification_subject'
wp option delete 'wcc_gravity_form_lawmatics_debug'
wp option delete 'wcc_gravity_form_lawmatics_uninstall'
wp option delete 'wcc_gravity_form_lawmatics_db_version'

