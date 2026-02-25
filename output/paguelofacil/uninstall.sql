-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paguelofacil_gateway_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pf_transaction_id', '_pf_payment_method', '_pf_total_pagado', '_pf_paguelofacil_status', '_pf_transaction_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pf_transaction_id', '_pf_payment_method', '_pf_total_pagado', '_pf_paguelofacil_status', '_pf_transaction_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pf_transaction_id', '_pf_payment_method', '_pf_total_pagado', '_pf_paguelofacil_status', '_pf_transaction_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pf_transaction_id', '_pf_payment_method', '_pf_total_pagado', '_pf_paguelofacil_status', '_pf_transaction_type');

