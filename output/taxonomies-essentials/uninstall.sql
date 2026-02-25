-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tx_valid_options', 'taxonomies_essentials_activate_redirect');

