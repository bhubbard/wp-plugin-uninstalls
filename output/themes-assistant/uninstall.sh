#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ata_installed'
wp option delete 'ata_version'
wp option delete 'borax_license_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'at_assistant_dismissed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'at_assistant_dismissed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'at_assistant_dismissed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'at_assistant_dismissed_notice'"
