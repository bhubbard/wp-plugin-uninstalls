#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fetp_options'
wp option delete 'fetp_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_price'"
wp option delete 'fetp_cookie'
wp option delete 'fetp_select'
wp option delete 'fetp_last_cron'
wp option delete 'fetp_clean_up_frequency'
wp option delete 'fetp_enable_download'
wp option delete 'fetp_paypal_settings'
wp option delete 'fetp_delete_data'
wp option delete 'fetp_enable_default_theme_download'
wp option delete 'fetp_premium'
wp option delete 'current_theme'

