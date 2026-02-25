#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcorgbotdetector_dbversion'
wp option delete 'jcorgbotdetector_db_version'
wp option delete 'jcorgbotdetector_last_email_sent'
wp option delete 'jcorgbotdetector_email_interval'
wp option delete 'jcorgbotdetector_email_format'
wp option delete 'jcorgbotdetector_history_to_keep'
wp option delete 'jcorgbotdetector_email'

