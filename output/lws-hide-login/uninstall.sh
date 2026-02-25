#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lws_aff_new_login'
wp option delete 'lws_aff_new_redirection'
wp option delete 'lwshl_do_not_ask_again'

# Delete Transients
wp transient delete 'lwshl_remind_me'

