#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcc_gf_clio_ignore_spam_entry'
wp option delete 'gf_db_version'
wp option delete 'wccc_gf_clio_notification_send_to   '
wp option delete 'wccc_gf_clio_notification_subject'
wp option delete 'wccc_gf_clio_debug'
wp option delete 'wccc_gf_clio_notification_send_to	'
wp option delete 'wccc_gf_clio_ignore_spam_entry'
wp option delete 'wccc_gf_clio_uninstall'
wp option delete 'wccc_gf_clio_db_version'

