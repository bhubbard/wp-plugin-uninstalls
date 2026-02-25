#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_habilitado'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_entornoact'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_titulo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_urltest'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_urlreal'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nombrecomercio'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_idfuc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_idioma'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_terminal'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_encriptkey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_moneda'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_urlok'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_urlko'"

