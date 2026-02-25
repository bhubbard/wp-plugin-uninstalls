#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_on_woocommerce'
wp option delete 'enable_on_shopp'
wp option delete 'enable_on_gform'
wp option delete 'selected_gform'
wp option delete 'gform_phone_field_id'
wp option delete 'enable_on_cform7'
wp option delete 'selected_cform7'
wp option delete 'cform7_phone_field_id'
wp option delete 'show_selected'
wp option delete 'selected_countries'
wp option delete 'initial_country'

