-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mf_forms_base_url', 'mf_forms_subscriber_id');

