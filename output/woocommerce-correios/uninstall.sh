#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_correios_autofill_addresses_db_version'
wp option delete 'woocommerce_correios_version'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'correios-cwsstaging-token'
wp transient delete 'correios-cwsproduction-token'
wp transient delete 'correios-cws-staging-token'
wp transient delete 'correios-cws-production-token'

