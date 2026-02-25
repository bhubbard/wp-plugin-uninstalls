-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugandquiz_domain_id', 'plugandquiz_script_position', 'plugandquiz_modal_position', 'plugandquiz_enable_script');

