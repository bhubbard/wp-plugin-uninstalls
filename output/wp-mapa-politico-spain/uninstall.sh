#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmps_plugin_mapas'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_provincia_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hover_provincia_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rellenar_provincias_con_enlace'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_has_link_provincia_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_metodo_recuperar_svg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wpmps_metodo_recuperar_svg'
wp option delete 'wpmps_border_color'
wp option delete 'wpmps_background_color'
wp option delete 'wpmps_background_provincia_color'
wp option delete 'wpmps_has_link_provincia_color'
wp option delete 'wpmps_hover_provincia_color'
wp option delete 'wpmps_show_border'
wp option delete 'wpmps_rellenar_provincias_con_enlace'
wp option delete 'wpmps_version'
wp option delete 'wpmps_separador1'
wp option delete 'wpmps_separador2'
wp option delete 'wpmps_separador3'

