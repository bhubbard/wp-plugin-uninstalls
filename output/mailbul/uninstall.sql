-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailbul_mid', 'mailbul_enable', 'mailbul_url', 'mailbul_username', 'mailbul_usertoken', 'mailbul_importall');

