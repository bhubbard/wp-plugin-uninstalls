#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srm_settings'
wp option delete 'afm_currency_symbol'
wp option delete 'afm_disable_thum'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afm-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afm-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afm-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afm-price'"
