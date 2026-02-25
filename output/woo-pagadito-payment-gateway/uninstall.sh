#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pagadito_settings'
wp option delete 'woocommerce_force_ssl_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_token_pagadito'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_token_pagadito'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_token_pagadito'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_token_pagadito'"
