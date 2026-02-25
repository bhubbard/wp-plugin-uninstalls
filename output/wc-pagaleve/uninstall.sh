#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_pagaleve_settings_environment'
wp option delete 'wc_pagaleve_webhook_token'
wp option delete 'wc_pagaleve_onboarding_lead_id'
wp option delete 'wc_pagaleve_settings_order_prefix'
wp option delete 'wc_pagaleve_settings_declined_recovery'
wp option delete 'wc_pagaleve_settings_cron'
wp option delete 'woocommerce_pagaleve-pix_settings'
wp option delete 'wc_pagaleve_settings_product'
wp option delete 'wc_pagaleve_settings_cart'
wp option delete 'woocommerce_pagaleve-pix-cash_settings'
wp option delete 'wc_pagaleve_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'pageleve_update_woo_order'

