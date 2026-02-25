#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MENSAGIA_LOGIN_EMAIL'
wp option delete 'MENSAGIA_LOGIN_PASSWORD'
wp option delete 'MENSAGIA_AUTHENTICATED'
wp option delete 'MENSAGIA_PREFIX_MODE'
wp option delete 'MENSAGIA_API_CONFIGURATION'
wp option delete 'mensagiasms_jal_db_version'
wp option delete 'MensagiaWPAdminNotices'

