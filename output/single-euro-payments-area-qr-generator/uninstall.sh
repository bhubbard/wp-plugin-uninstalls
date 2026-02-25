#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'company_name'
wp option delete 'company_iban'
wp option delete 'company_bic'
wp option delete 'company_qr_size'

