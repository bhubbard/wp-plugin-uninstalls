-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paylane_settings', 'login_PayLane', 'password_PayLane');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method_title', 'paylane-type', 'paylane-id-sale', 'paylane-notification-type', 'paylane-notification-timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method_title', 'paylane-type', 'paylane-id-sale', 'paylane-notification-type', 'paylane-notification-timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method_title', 'paylane-type', 'paylane-id-sale', 'paylane-notification-type', 'paylane-notification-timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method_title', 'paylane-type', 'paylane-id-sale', 'paylane-notification-type', 'paylane-notification-timestamp');

