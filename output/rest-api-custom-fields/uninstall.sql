-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('integromat_api_options_comment', 'integromat_api_options_post', 'integromat_api_options_term', 'integromat_api_options_user');
DELETE FROM wp_options WHERE option_name LIKE 'integromat_api_options_%';

