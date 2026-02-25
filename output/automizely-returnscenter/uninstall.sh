#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'automizely_returnscenter_plugin_redirection'
wp option delete 'returnscenter_option_name'
wp option delete 'woocommerce_weight_unit'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc-automizely-returnscenter-plugin%' OR option_name LIKE '_site_transient_wc-automizely-returnscenter-plugin%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
