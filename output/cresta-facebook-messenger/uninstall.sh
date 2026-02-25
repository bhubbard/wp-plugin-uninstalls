#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crestafacebookmessenger_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_get_cresta_facebook_messenger_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_get_cresta_facebook_messenger_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_get_cresta_facebook_messenger_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_get_cresta_facebook_messenger_plugin'"
