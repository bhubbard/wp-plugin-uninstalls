#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vapm_markup_percentage'
wp option delete 'vapm_vat_percentage'

# Delete Transients
wp transient delete 'vapm_updated_products'
wp transient delete 'vapm_skipped_products'
wp transient delete 'vapm_session_updated_products'
wp transient delete 'vapm_skip_calculations_mode'

