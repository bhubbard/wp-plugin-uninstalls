#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ata_logo_carousel_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ata_logo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ata_logo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ata_logo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ata_logo_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ata_logo_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ata_logo_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ata_logo_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ata_logo_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ata_logo_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ata_logo_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ata_logo_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ata_logo_tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ata_logo_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ata_logo_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ata_logo_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ata_logo_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ata_logo_carousel_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ata_logo_carousel_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ata_logo_carousel_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ata_logo_carousel_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ata_logo_carousel_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ata_logo_carousel_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ata_logo_carousel_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ata_logo_carousel_slider'"
