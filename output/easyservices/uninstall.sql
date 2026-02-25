-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyservices_version', 'easyservices_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easyl_price', 'easyl_period', 'easyl_type', 'easyl_expert');
DELETE FROM wp_usermeta WHERE meta_key IN ('easyl_price', 'easyl_period', 'easyl_type', 'easyl_expert');
DELETE FROM wp_termmeta WHERE meta_key IN ('easyl_price', 'easyl_period', 'easyl_type', 'easyl_expert');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easyl_price', 'easyl_period', 'easyl_type', 'easyl_expert');

