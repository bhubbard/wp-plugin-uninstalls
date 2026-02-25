-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravityformsaddon_gravityformsqualpay_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_payment_profiles';
DELETE FROM wp_options WHERE option_name LIKE '%_card_types';
DELETE FROM wp_options WHERE option_name LIKE '%_currencies';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gravityformsaddon_qualpay_customer_id', '_gravityformsaddon_qualpay_billing_card', '_gravityformsaddon_qualpay_billing_card_default');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gravityformsaddon_qualpay_customer_id', '_gravityformsaddon_qualpay_billing_card', '_gravityformsaddon_qualpay_billing_card_default');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gravityformsaddon_qualpay_customer_id', '_gravityformsaddon_qualpay_billing_card', '_gravityformsaddon_qualpay_billing_card_default');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gravityformsaddon_qualpay_customer_id', '_gravityformsaddon_qualpay_billing_card', '_gravityformsaddon_qualpay_billing_card_default');

