-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcc_settings', 'wpcc::search', 'wpcc::404', 'carbon_calculator', 'wpcc_details::search', 'wpcc_details::404');
DELETE FROM wp_options WHERE option_name LIKE 'wpcc::%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcc_details::%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcc', 'wpcc_details', 'wpcc_pending');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcc', 'wpcc_details', 'wpcc_pending');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcc', 'wpcc_details', 'wpcc_pending');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcc', 'wpcc_details', 'wpcc_pending');

