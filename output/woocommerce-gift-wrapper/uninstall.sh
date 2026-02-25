#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcgwp_cart_hook'
wp option delete 'wcgwp_cart_display'
wp option delete 'current_theme'
wp option delete 'wcgwp_lt6_templates'
wp option delete 'wcgwp_number'
wp option delete 'wcgwp_details'
wp option delete 'wcgwp_link'
wp option delete 'wcGIFTWRAPPER_VERSION'
wp option delete 'wcgw_version'
wp option delete 'wcgwp_modal'
wp option delete 'wcgwp_donate_dismiss_06-28'
wp option delete 'wcgwp_display'
wp option delete 'wcgwp_strings'
wp option delete 'wcgwp_category_id'
wp option delete 'wcgwp_show_thumb'
wp option delete 'wcgwp_textarea_limit'
wp option delete 'wcgwp_checkbox_link'
wp option delete 'wcgwp_hide_price'
wp option delete 'wcgwp_multiples'
wp option delete ' wcgwp_multiples'
wp option delete 'wcgwp_delete_all'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
