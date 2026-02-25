#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wl_tos_tos_heading'
wp option delete 'wl_tos_pp_heading'
wp option delete 'wl_tos_name'
wp option delete 'wl_tos_full_name'
wp option delete 'wl_tos_possessive_name'
wp option delete 'wl_tos_domain_name'
wp option delete 'wl_tos_official_site'
wp option delete 'wl_tos_min_age'
wp option delete 'wl_tos_time_period_change'
wp option delete 'wl_tos_time_period_reply'
wp option delete 'wl_tos_time_period_damage'
wp option delete 'wl_tos_time_dcma_url'
wp option delete 'wl_tos_venue'
wp option delete 'wl_tos_court'
wp option delete 'wl_tos_arbit'
wp option delete 'widget_api_endpoint'

