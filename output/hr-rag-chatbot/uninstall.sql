-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hr_rag_db_version', 'hr_rag_options');
DELETE FROM wp_options WHERE option_name LIKE 'hr_rag_context_%';
DELETE FROM wp_options WHERE option_name LIKE 'hr_rag_history_%';

