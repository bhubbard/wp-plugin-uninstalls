#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_woo_additional_terms_page_id'
wp option delete '_woo_additional_terms_notice'
wp option delete '_woo_additional_terms_error'
wp option delete 'woo_additional_terms_onboarding'
wp option delete 'woo_additional_terms_rated'
wp option delete 'woo_additional_terms_activation_timestamp'
wp option delete 'woo_additional_terms_options'
wp option delete 'active_sitewide_plugins'

