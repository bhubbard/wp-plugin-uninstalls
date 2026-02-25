-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wvr_remove_css', 'wvr_remove_script', 'wvr_remove_generator');

