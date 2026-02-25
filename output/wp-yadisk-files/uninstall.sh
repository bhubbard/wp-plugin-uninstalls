#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-yadisk-files-default-download-label'
wp option delete 'wp-yadisk-files-root-directory'
wp option delete 'wp-yadisk-files-default-directory'
wp option delete 'wp-yadisk-files-login'
wp option delete 'wp-yadisk-files-pass'
wp option delete 'wp-yadisk-files-transparent-mode'
wp option delete 'yadisk_download_counters'

