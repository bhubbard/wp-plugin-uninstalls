-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'nvl_wl_n', 'nvl_wl_d', 'nvl_wl_a', 'nouvello-worker-activation-key', 'nvl_wemanage_worker_wp', 'nvl_wemanage_worker_wc', 'site_admins', 'nouvello_redirect_after_activation_option', 'nvl_wemanage_manual', 'ns-wmw-key', 'ns-wmw-secret', 'ns-wmw-wc-key', 'ns-wmw-wc-secret');

