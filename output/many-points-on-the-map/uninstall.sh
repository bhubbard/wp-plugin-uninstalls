#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_mxmpotm_custom_markup_notice'
wp option delete '_mxmpotm_alphabet_order_notice'
wp option delete 'mx_google_map_api_key'
wp option delete 'mxmpotm_flush_rewrite_rules'

