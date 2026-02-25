-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awber_params_url1', 'awber_params_url2', 'awber_params_url3', 'awber_params_url4', 'awber_params_url5');

