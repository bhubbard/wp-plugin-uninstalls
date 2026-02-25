#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paguelofacil_gateway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pf_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pf_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pf_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pf_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pf_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pf_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pf_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pf_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pf_total_pagado'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pf_total_pagado'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pf_total_pagado'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pf_total_pagado'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pf_paguelofacil_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pf_paguelofacil_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pf_paguelofacil_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pf_paguelofacil_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pf_transaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pf_transaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pf_transaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pf_transaction_type'"
