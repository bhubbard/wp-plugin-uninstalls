#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp125_ad_orientation'
wp option delete 'wp125_num_slots'
wp option delete 'wp125_ad_order'
wp option delete 'wp125_buyad_url'
wp option delete 'wp125_disable_default_style'
wp option delete 'wp125_emailonexp'
wp option delete 'wp125_defaultad'
wp option delete 'wp125_daysbeforeexp'
wp option delete 'wp125_dofollow'
wp option delete 'wp125_db_version'

