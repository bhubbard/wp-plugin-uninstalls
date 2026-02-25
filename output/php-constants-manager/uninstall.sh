#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phpcm_early_loading_enabled'
wp option delete 'phpcm_db_version'

# Delete Transients
wp transient delete 'phpcm_db_error'
wp transient delete 'phpcm_load_error'
wp transient delete 'phpcm_admin_notice'
wp transient delete 'phpcm_import_errors'

