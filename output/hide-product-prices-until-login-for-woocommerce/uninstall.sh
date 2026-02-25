#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hpulr_restricted_roles'
wp option delete 'hpulr_hidden_price_message'
wp option delete 'hpulr_test_mode'
wp option delete 'hpulr_allowed_countries'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hpulr_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hpulr_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hpulr_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hpulr_custom_message'"
