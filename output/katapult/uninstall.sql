-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_katapult_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('leasable', 'leasable_variable');
DELETE FROM wp_usermeta WHERE meta_key IN ('leasable', 'leasable_variable');
DELETE FROM wp_termmeta WHERE meta_key IN ('leasable', 'leasable_variable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('leasable', 'leasable_variable');

