#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'donamt_total_donation_amount'
wp option delete 'donamt_settings'
wp option delete 'donamt_display_settings'
wp option delete 'donamt_version'
wp option delete 'total_donation_amount'
wp option delete 'donamt_previous_version'
wp option delete 'donamt_hpos_compatible'
wp option delete 'donation_amount_settings'
wp option delete 'donation_amount_display_settings'
wp option delete 'donation_amount_version'
wp option delete 'dat_settings'
wp option delete 'dat_display_settings'
wp option delete 'dat_total_donation_amount'
wp option delete 'dat_version'
wp option delete 'dat_previous_version'

# Delete Transients
wp transient delete 'donamt_redirect_after_save'
wp transient delete 'donamt_version_changed'
wp transient delete 'donamt_checked_amount'

