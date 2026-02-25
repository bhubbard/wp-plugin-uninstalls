#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brambles_ai_auto_inject'
wp option delete 'brambles_ai_cuid'
wp option delete 'brambles_ai_position'
wp option delete 'brambles_ai_primary_color'
wp option delete 'brambles_ai_secondary_color'
wp option delete 'brambles_ai_welcome_message'
wp option delete 'brambles_ai_header_title'
wp option delete 'brambles_ai_proactive_engagement'
wp option delete 'brambles_ai_stripe_connected'
wp option delete 'brambles_ai_stripe_account_id'
wp option delete 'brambles_ai_debug'
wp option delete 'brambles_ai_api_base_url'
wp option delete 'brambles_ai_install_secret'
wp option delete 'brambles_ai_onboard_log'
wp option delete 'brambles_ai_onboarded'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brambles_stripe_state_%' OR option_name LIKE '_site_transient_brambles_stripe_state_%'"
wp transient delete 'brambles_ai_stripe_success'
wp transient delete 'brambles_ai_activation_redirect'

