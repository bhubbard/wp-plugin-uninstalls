-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcloi_url_api', 'wcloi_consumer_key', 'wcloi_consumer_secret', 'woocommerce_enable_guest_checkout', 'woocommerce_registration_generate_password', 'wcloi_learningobjects_autenticate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcloi_prodotto_lo', 'wcloi_prodotto_ecm');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcloi_prodotto_lo', 'wcloi_prodotto_ecm');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcloi_prodotto_lo', 'wcloi_prodotto_ecm');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcloi_prodotto_lo', 'wcloi_prodotto_ecm');

