#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dadata_api_key'
wp option delete 'dadata_woo_off'
wp option delete 'dadata_use_mask'
wp option delete 'dadata_locations'
wp option delete 'dadata_count_r'
wp option delete 'dadata_hint'
wp option delete 'dadata_minchars'

