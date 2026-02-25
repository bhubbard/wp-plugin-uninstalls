#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nautica_app_grade_db_version'
wp option delete 'APPGRADENAUTICA_NAUTICA_APP_GRADE_TOKEN'
wp option delete 'APPGRADENAUTICA_SINCRO_PRODOTTI_SPED'
wp option delete 'APPGRADENAUTICA_SINCRO_CORSO_LEZIONI'
wp option delete 'APPGRADENAUTICA_CORSO_LEZIONI_SEND_EMAIL'
wp option delete 'APPGRADENAUTICA_SINCRO_CORSO_PACCHETTI'
wp option delete 'APPGRADENAUTICA_SINCRO_PRODOTTI'
wp option delete 'APPGRADENAUTICA_SINCRO_PRODOTTI_NAME'
wp option delete 'APPGRADENAUTICA_SINCRO_PRODOTTI_FATTURA'
wp option delete 'APPGRADENAUTICA_SINCRO_PRODOTTI_CODE'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wdn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wdn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wdn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wdn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_id_corso_lezione'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_id_corso_lezione'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_id_corso_lezione'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_id_corso_lezione'"
