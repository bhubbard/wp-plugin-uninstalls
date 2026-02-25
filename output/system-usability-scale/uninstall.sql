-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suscale_pages', 'suscale_results_page_id', 'suscale_questionnaire_page_id', 'suscale_page_created', 'suscale_page_id');

