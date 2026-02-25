#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avacy_show_banner'
wp option delete 'avacy_enable_preemptive_block'
wp option delete 'avacy_tenant'
wp option delete 'avacy_webspace_key'
wp option delete 'avacy_webspace_id'
wp option delete 'avacy_api_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form_user_identifier'"
wp option delete 'avacy_WooCommerce_Checkout_Form_form_user_identifier'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_radio_enabled'"

# Delete Transients
wp transient delete 'avacy_active_tab'
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
