#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pxc_amm_apikey'
wp option delete 'pxc_amm_url_terms'
wp option delete 'pxc_amm_url_privacy'
wp option delete 'pxc_amm_url_imprint'

