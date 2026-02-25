-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dapre_cft_previous_options', 'dapre_cft_previous_user_fields', 'dapre_cft_previous_post_fields');

