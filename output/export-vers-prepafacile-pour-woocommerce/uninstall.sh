#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PREPAFACILE_CONTRAT'
wp option delete 'PREPAFACILE_REFEXP'
wp option delete 'PREPAFACILE_STATE_EXPORT'
wp option delete 'PREPAFACILE_STATE_ENVOIE'
wp option delete 'PREPAFACILE_DB_VERSION'
wp option delete 'WOO2PREPAFACILE_VERSION'

