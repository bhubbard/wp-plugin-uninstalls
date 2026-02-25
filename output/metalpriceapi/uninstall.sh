#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpa_api_key'
wp option delete 'mpa_data_success'
wp option delete 'mpa_data_none'
wp option delete 'mpa_data_error'
wp option delete 'mpa_data_carat_success'

