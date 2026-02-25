#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crowdsignal_api_key_secret'
wp option delete 'polldaddy_api_key'
wp option delete 'crowdsignal_forms_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crowdsignal_forms_poll_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crowdsignal_forms_poll_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crowdsignal_forms_poll_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crowdsignal_forms_poll_ids'"
