#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'KVfFTP_ftplist'
wp option delete 'KVfFTP_numserver'
wp option delete 'KVfFTP_server'
wp option delete 'KVfFTP_user'
wp option delete 'KVfFTP_pass'
wp option delete 'KVfFTP_url'

