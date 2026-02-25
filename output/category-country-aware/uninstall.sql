-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccax_options', 'cookie_notice_options', 'cca_configcodes', 'CCA_WID_VERSION', 'CCA_VIRGIN_INSTALL', 'ccax_post_widgets', 'cc_maxmind_status', 'ccax_maxmind_status');

