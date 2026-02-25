-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azm_woo_rac_defualt_campaign', 'azm_woo_rac_manual_campaign');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_unsubscribed', '_billing_email', '_billing_first_name', '_billing_last_name', 'azr-visitor', '_azr_visitor', '_rule', '_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_unsubscribed', '_billing_email', '_billing_first_name', '_billing_last_name', 'azr-visitor', '_azr_visitor', '_rule', '_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_unsubscribed', '_billing_email', '_billing_first_name', '_billing_last_name', 'azr-visitor', '_azr_visitor', '_rule', '_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_unsubscribed', '_billing_email', '_billing_first_name', '_billing_last_name', 'azr-visitor', '_azr_visitor', '_rule', '_status');

