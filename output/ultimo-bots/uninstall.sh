#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultimo_bot_credentials'
wp option delete 'ultimo_bots_snippet'
wp option delete 'ultimo_bots_do_redirect'

