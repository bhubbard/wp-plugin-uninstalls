-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SpoofProof_Login_Override', 'SpoofProof_Stop_JavaScript_Injection', 'SpoofProof_Stop_SQL_Injection', 'SpoofProof_Num_Retries', 'plugin_options', 'SpoofProof_db_version', 'Spoo3fProof_Stop_JavaScript_Injection', 'SpoofProof_plugin_do_activation_redirect');

