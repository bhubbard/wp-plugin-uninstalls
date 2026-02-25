#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prosolwpclient_additionalsite'
wp option delete 'prosolwpclient_frontend'
wp option delete 'prosolwpclient_sync_time'
wp option delete 'prosolwpclient_api_config'
wp option delete 'prosolwpclient_designtemplate'
wp option delete 'prosolwpclient_encryptionkey'
wp option delete 'prosolwpclient_languages'
wp option delete 'prosolwpclient_vectorkey'
wp option delete 'prosolwpclient_applicationform'
wp option delete 'prosolwpclient_privacypolicy'

# Clear Cron Jobs
wp cron event delete 'wp_ajax_proSol_dailytask_tableJobs'

