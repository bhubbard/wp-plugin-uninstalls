#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'factpro_fowo_client_types'
wp option delete 'factpro_fowo_send_email_automatically'
wp option delete 'factpro_fowo_client_token'
wp option delete 'factpro_fowo_api_version'
wp option delete 'factpro_fowo_base_url'
wp option delete 'factpro_fowo_token'
wp option delete 'factpro_fowo_testmode'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'factpro_fowo_bsiglafactura'
wp option delete 'factpro_fowo_bnsiglafactura'
wp option delete 'factpro_fowo_siglafactura'
wp option delete 'factpro_fowo_nsiglafactura'
wp option delete 'factpro_fowo_install_timestamp'
wp option delete 'factpro_fowo_version'

# Delete Transients
wp transient delete 'factpro_fowo_installing'

