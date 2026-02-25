#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selupload_username'
wp option delete 'selupload_pass'
wp option delete 'selupload_auth'
wp option delete 'selupload_container'
wp option delete 'selupload_path_in_storage'
wp option delete 'selupload_debug'
wp option delete 'selupload_lazyuploading'
wp option delete 'selupload_notoverewrite'
wp option delete 'selupload_delafter'
wp option delete 'selupload_filter'
wp option delete 'selupload_del'

# Clear Cron Jobs
wp cron event delete 'selupload_scheduleUpload'
wp cron event delete 'selupload_delFile'

