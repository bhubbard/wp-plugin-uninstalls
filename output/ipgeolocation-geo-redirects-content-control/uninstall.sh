#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipgeo_setup'
wp option delete 'ipgeo_country_rules'
wp option delete 'ipgeo_page_exclusions'
wp option delete 'ipgeo_country_access'

