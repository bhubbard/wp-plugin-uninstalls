#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reword_plugin_version'
wp option delete 'reword_reports_min'
wp option delete 'reword_icon_pos'
wp option delete 'reword_notice_banner'
wp option delete 'reword_email_new'
wp option delete 'reword_access_cap'
wp option delete 'reword_send_stats'
wp option delete 'reword_banner_pos'

