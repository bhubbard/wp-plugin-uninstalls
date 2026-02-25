#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authyo_otp_options'
wp option delete 'authyo_nf_email_subscription_dismissed'
wp option delete 'authyo_nf_email_subscription_completed'

# Delete Transients
wp transient delete 'authyo_nf_trigger_tracking'
wp transient delete 'authyo_nf_show_email_subscription'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_authyo_verified_%' OR option_name LIKE '_site_transient_authyo_verified_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_authyo_mask_%' OR option_name LIKE '_site_transient_authyo_mask_%'"

