#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smtp_host'
wp option delete 'smtp_port'
wp option delete 'smtp_username'
wp option delete 'smtp_password'
wp option delete 'smtp_from'
wp option delete 'smtp_fromname'
wp option delete 'smtp_replyto'
wp option delete 'smtp_ssl'

