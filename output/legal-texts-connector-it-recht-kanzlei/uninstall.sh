#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gzdp_legal_page_terms_enabled'
wp option delete 'woocommerce_gzdp_legal_page_revocation_enabled'
wp option delete 'gox_product_domain'

