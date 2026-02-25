-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_uci_allow_urls', 'wp_uci_nbm_date', 'wp_uci_cbr_date', 'wp_uci_nbu_date', 'wp_uci_cbu_date', 'wp_uci_nbk_date', 'wp_uci_soap', 'wp_uci_cba_date', 'wp_uci_nbg_date', 'wp_uci_nbb_date', 'uci_db_version', 'wp_uci_plurl', 'wp_uci_curl');

