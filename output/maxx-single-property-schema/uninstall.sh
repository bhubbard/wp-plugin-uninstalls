#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maxx_psp_enable_single_property_schema'
wp option delete 'maxx_psp_aggregate_rating_enable'
wp option delete 'maxx_psp_randomize_ratings'
wp option delete 'maxx_psp_schema_type'
wp option delete 'maxx_psp_currency_type'
wp option delete 'maxx_psp_price_valid_until'
wp option delete 'maxx_psp_breadcrumb_options'

