-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uppp_network_num_results', 'uppp_site_num_results', 'uppp_site_automatic_insertion', 'uppp_network_automatic_insertion');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uppp_user_num_results');
DELETE FROM wp_usermeta WHERE meta_key IN ('uppp_user_num_results');
DELETE FROM wp_termmeta WHERE meta_key IN ('uppp_user_num_results');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uppp_user_num_results');

