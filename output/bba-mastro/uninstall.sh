#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bba_admin_custom_order_fields'
wp option delete 'bba_token'
wp option delete 'bba_token_expiration'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_bbamastro_rules_settings'
wp option delete 'bba_admin_custom_order_field_next_field_id'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

