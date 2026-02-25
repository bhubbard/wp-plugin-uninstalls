-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_pagaleve_settings_environment', 'wc_pagaleve_webhook_token', 'wc_pagaleve_onboarding_lead_id', 'wc_pagaleve_settings_order_prefix', 'wc_pagaleve_settings_declined_recovery', 'wc_pagaleve_settings_cron', 'woocommerce_pagaleve-pix_settings', 'wc_pagaleve_settings_product', 'wc_pagaleve_settings_cart', 'woocommerce_pagaleve-pix-cash_settings', 'wc_pagaleve_do_activation_redirect');

