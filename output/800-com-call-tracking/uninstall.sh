#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ehdi_api_key'
wp option delete 'ehdi_selected_company_id'
wp option delete 'ehdi_dni_script'
wp option delete 'ehdi_wrap_script'

# Delete Transients
wp transient delete 'ehdi_admin_notice'

