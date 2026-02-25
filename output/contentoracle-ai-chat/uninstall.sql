-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%post_types';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%auto_generate_only_new_embeddings';
DELETE FROM wp_options WHERE option_name LIKE '%ai_results_page';
DELETE FROM wp_options WHERE option_name LIKE '%organization_name';

