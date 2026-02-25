#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aisp_autocomplete_here_api_key'
wp option delete 'aisp_autocomplete_here_limit'
wp option delete 'aisp_fluent_forms_enable'
wp option delete 'aisp_fluent_forms_container_class'
wp option delete 'aisp_sureforms_enable'
wp option delete 'aisp_sureforms_container_class'
wp option delete 'aisp_cf7_enable'
wp option delete 'aisp_cf7_container_class'
wp option delete 'aisp_wpforms_enable'
wp option delete 'aisp_wpforms_container_class'
wp option delete 'aisp_custom_field_enable'
wp option delete 'aisp_custom_field_container_class'
wp option delete 'aisp_wc_enable_checkout'
wp option delete 'aisp_wc_enable_edit_address'
wp option delete 'aisp_wc_enable_admin_profile'

