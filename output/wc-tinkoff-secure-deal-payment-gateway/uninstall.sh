#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rz_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rz_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rz_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rz_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_paymentId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_paymentId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_paymentId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_paymentId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tinkoff_gateway_user_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tinkoff_gateway_user_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tinkoff_gateway_user_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tinkoff_gateway_user_card'"
