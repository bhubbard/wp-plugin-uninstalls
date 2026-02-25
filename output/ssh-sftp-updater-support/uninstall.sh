#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssh_sftp_updater_support_dismiss_page_notice_until'
wp option delete 'ftp_credentials'
wp option delete 'active_sitewide_plugins'
wp option delete 'ssh_sftp_updater_support_dismiss_dash_notice_until'

