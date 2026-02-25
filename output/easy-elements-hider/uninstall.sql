-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('encore_easy_elements_hider_hidden_elements_selectors');

