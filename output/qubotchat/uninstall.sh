#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qubotchat_do_activation_redirect'
wp option delete 'qubotSitePages'
wp option delete 'qubotToken'

