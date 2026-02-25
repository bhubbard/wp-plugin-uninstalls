-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('t4bnt_review_nt', 't4bnt_activation_time', 't4bnt_plugin_version', 't4bnt_general', 't4bnt_content', 't4bnt_advance');

