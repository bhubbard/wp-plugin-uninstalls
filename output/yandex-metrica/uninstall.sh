#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metrica_options'
wp option delete 'yandex_metrica_db_version'

# Delete Transients
wp transient delete 'yandex_metrica_installing'

