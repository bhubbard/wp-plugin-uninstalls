#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'telefon_bars_active'
wp option delete 'telefon_bars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'telefon_bars_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'telefon_bars_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'telefon_bars_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'telefon_bars_active'"
