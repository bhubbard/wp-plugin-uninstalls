-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hcc_allowed_tags', 'hcc_encode_html', 'hcc_warning_message', 'hcc_force_links_target', 'hcc_version');

