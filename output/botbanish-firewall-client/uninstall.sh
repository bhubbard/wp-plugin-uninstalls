#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BotBanish_do_activation_redirect'
wp option delete 'botbanishfirewall_client_option_name'

