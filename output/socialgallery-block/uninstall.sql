-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socialgallery_block_access_token', 'socialgallery_block_activation_redirect');

