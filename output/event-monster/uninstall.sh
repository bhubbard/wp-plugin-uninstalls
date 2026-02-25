#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awl_em_common_settings'
wp option delete 'em_starter_db_version'
wp option delete 'em_options'
wp option delete 'em_currency_symbol'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_em_layout_cache_%' OR option_name LIKE '_site_transient_em_layout_cache_%'"
wp transient delete 'em_starter_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'awl_em_settings_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'awl_em_settings_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'awl_em_settings_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awl_em_settings_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_monster_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_monster_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_monster_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_monster_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_em_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_em_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_em_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_em_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
