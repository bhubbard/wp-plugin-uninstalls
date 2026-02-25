-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('one_click_start_saved_recipe', 'one_click_start_show_review_prompt', 'enable_xmlrpc', 'ocs_saved_recipe');

