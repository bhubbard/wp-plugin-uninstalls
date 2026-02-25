-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amb_wcvap_empty_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_amb_wpvap_variation_url', '_amb_vap_prod', '_amb_vap_prod_url', '_amb_vap_prod_cart_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_amb_wpvap_variation_url', '_amb_vap_prod', '_amb_vap_prod_url', '_amb_vap_prod_cart_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_amb_wpvap_variation_url', '_amb_vap_prod', '_amb_vap_prod_url', '_amb_vap_prod_cart_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_amb_wpvap_variation_url', '_amb_vap_prod', '_amb_vap_prod_url', '_amb_vap_prod_cart_text');

