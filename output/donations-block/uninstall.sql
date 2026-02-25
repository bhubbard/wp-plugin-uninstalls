-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdb_install_pages_created', 'pdb_mode', 'pdb_email', 'pdb_amount', 'pdb_currency', 'pdb_size', 'pdb_purpose', 'pdb_SuggestionAmount');

