#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active-{%plugin%}-barcodes-version'
wp option delete 'alg_wc_ean_title'
wp option delete 'wpm_pgw_label'
wp option delete 'active_sitewide_plugins'

