#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpst_country_selected'
wp option delete 'wpst_suggestions_limit'
wp option delete 'wpst_sortfield'
wp option delete 'wpst_sorttype'
wp option delete 'wpst_api_key'
wp option delete 'wpst_countries'

