-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartsupport_wp_settings', 'smartsupport_wp_rag_collections', 'smartsupport_rag_notice', 'smartsupport_wp_activation_redirect');

