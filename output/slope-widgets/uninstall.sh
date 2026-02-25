#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slope_options'
wp option delete 'slope_global_settings'
wp option delete 'slope_promo'
wp option delete 'slope_promotions_options'

