#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mail_cloak_honeypot_triggers'
wp option delete 'mail_cloak_bot_log'
wp option delete 'mail_cloak_ip_blocklist'
wp option delete 'mail_cloak_settings'

