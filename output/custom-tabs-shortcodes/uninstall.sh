#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cts_config'
wp option delete 'cts_color_defaults'
wp option delete 'cts_lunes'
wp option delete 'cts_martes'
wp option delete 'cts_miercoles'
wp option delete 'cts_jueves'
wp option delete 'cts_viernes'
wp option delete 'cts_sabado'
wp option delete 'cts_domingo'
wp option delete 'cts_icons'
wp option delete 'cts_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'td_colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'td_colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'td_colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'td_colors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'td_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'td_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'td_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'td_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'td_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'td_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'td_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'td_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'td_is_daily'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'td_is_daily'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'td_is_daily'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'td_is_daily'"
