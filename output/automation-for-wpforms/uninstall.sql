-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rnauto_process_link_page_id', 'rnauto_process_workflow_page_id');

