#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mail_debug_version'
wp option delete 'mail_debug_adminonly'
wp option delete 'mail_debug_dbversion'
wp option delete 'mail_debug_redirect_to'
wp option delete 'site_name'

