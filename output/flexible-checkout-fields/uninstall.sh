#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'inspire_checkout_fields_%'"
wp option delete 'inspire_checkout_fields_css_disable'
wp option delete 'api_flexible-checkout-fields-pro_activated'
wp option delete 'inspire_checkout_fields_section_settings'
wp option delete 'wpdesk_helper_options'
wp option delete 'wpdesk_tracker_skip_flexible_checkout_fields'
wp option delete 'wpdesk_tracker_notice'
wp option delete 'active_sitewide_plugins'

