-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('megacal_options', 'megacal_hidden_options', 'megacal_execution_id_store', 'megacal_processing_errors', 'megacal_do_rewrite_flush');

