#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'infocob_crm_forms_settings'
wp option delete 'infocob_db_version'
wp option delete 'INFOCOB_CRM_FORMS_UPGRADE_VERSION'

# Clear Cron Jobs
wp cron event delete 'infocob_crm_forms_purge_logs_event'

