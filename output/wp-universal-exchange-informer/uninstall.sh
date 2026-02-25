#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_uci_allow_urls'
wp option delete 'wp_uci_nbm_date'
wp option delete 'wp_uci_cbr_date'
wp option delete 'wp_uci_nbu_date'
wp option delete 'wp_uci_cbu_date'
wp option delete 'wp_uci_nbk_date'
wp option delete 'wp_uci_soap'
wp option delete 'wp_uci_cba_date'
wp option delete 'wp_uci_nbg_date'
wp option delete 'wp_uci_nbb_date'
wp option delete 'uci_db_version'
wp option delete 'wp_uci_plurl'
wp option delete 'wp_uci_curl'

