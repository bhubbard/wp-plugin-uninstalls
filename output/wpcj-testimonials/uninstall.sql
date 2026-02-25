-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcjt_version', 'wpcjt_template', 'wpcjt_delete_me', 'wpcjt_nofollow', 'wpcjt_size', 'wpcjt_multi');

