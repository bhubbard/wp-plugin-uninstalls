#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppp_dropdown_location'
wp option delete 'wppp_method'
wp option delete 'wppp_dropdown_options'
wp option delete 'wppp_return_to_first'
wp option delete 'wppp_shop_columns'
wp option delete 'wppp_default_ppp'
wp option delete 'wppp_version'
wp option delete 'wppp_settings'

