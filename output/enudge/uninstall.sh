#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enudge_api_call'
wp option delete 'enudge_error_log'
wp option delete 'enudge_licence_key_checked'
wp option delete 'enudge_licence_key_valid'
wp option delete 'enudge_licence_key'
wp option delete 'enudge_support_elementor_forms'
wp option delete 'enudge_support_contact_form_7'
wp option delete 'enudge_support_wpforms'
wp option delete 'enudge_support_gravity_forms'
wp option delete 'enudge_support_formidable_forms'
wp option delete 'enudge_support_forminator_forms'
wp option delete 'enudge_support_fluentforms_forms'
wp option delete 'disable_comments'
wp option delete 'enudge_support_wp_comment'
wp option delete 'enudge_support_woocommerce_review'
wp option delete 'enudge_support_registration'
wp option delete 'enudge_store_log'
wp option delete 'enudge_support_woocommerce_registration'

